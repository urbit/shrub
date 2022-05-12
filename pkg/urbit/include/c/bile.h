//! @file bile.h
//!
//! File containing a one or more blobs of arbitrary binary data up to
//! 2^32 bytes in size.
//!
//! @note mnemonic: [b]inary f[ile] -> bile

#ifndef C3_BILE_H
#define C3_BILE_H

#include "c/portable.h"
#include "c/types.h"
#include "c/defs.h"
#include "c/path.h"

//==============================================================================
// Types
//==============================================================================

//! Binary file.
struct _c3_bile;
typedef struct _c3_bile c3_bile;

//==============================================================================
// Functions
//==============================================================================

//! Open/create a binary file.
//!
//! @param[in] pax_u  Path handle of binary file.
//!
//! @return NULL  `pax_u` is NULL.
//! @return NULL  File could not be opened/created.
//! @return NULL  File size could not be determined.
//! @return       Binary file handle. Must be freed by caller after calling
//!               c3_bile_close().
c3_bile*
c3_bile_open(const c3_path* const pax_u);

//! Get the length in bytes of a binary file.
//!
//! @param[in] bil_u  Binary file handle.
//!
//! @return  Length in bytes or 0 if `bil_u` is NULL.
size_t
c3_bile_len(const c3_bile* const bil_u);

//! Get the file path of a binary file.
//!
//! @param[in] bil_u  Binary file handle.
//!
//! @return  File path or NULL if `bil_u` is NULL.
const c3_path*
c3_bile_path(const c3_bile* const bil_u);

//! Get the string representation of a binary file's file path.
//!
//! @param[in] bil_u  Binary file handle.
//!
//! @return  String representation of the file path or NULL if `bil_u` is NULL.
const c3_c*
c3_bile_path_str(const c3_bile* const bil_u);

//! Append a raw byte array to a binary file.
//!
//! If a call to c3_bile_put_raw() fails, the effects of any partial writes will
//! be abandoned so that the binary file is left in a consistent state.
//!
//! @param[in] bil_u  Binary file handle.
//! @param[in] dat_v  Raw byte array.
//! @param[in] dat_i  Length of `dat_v` in bytes.
//!
//! @return 0  `dat_v` is NULL.
//! @return 0  Failed to write data to binary file.
//! @return 1  Success.
c3_t
c3_bile_put_raw(c3_bile* const    bil_u,
                const void* const dat_v,
                const size_t      dat_i);

//! Read a raw byte array from a binary file.
//!
//! The read occurs from the beginning of the file if c3_bile_get_raw() has not
//! been called on the binary file since c3_bile_open() was called *or* if the
//! last call to c3_bile_get_raw() reached EOF. If a call to c3_bile_get_raw()
//! fails, the read offset will be restored to its previous location as if the
//! call was never attempted.
//!
//! @param[in]  bil_u  Binary file handle.
//! @param[out] dat_v  Destination address to write raw byte array to. Must have
//!                    enough space for `dat_i` bytes.
//! @param[in]  dat_i  Length of `dat_v` in bytes.
//!
//! @return 0  `dat_v` is NULL.
//! @return 0  Failed to read data from binary file.
//! @return 1  Success.
c3_t
c3_bile_get_raw(c3_bile* const bil_u, void* const dat_v, const size_t dat_i);

//! Gracefully dispose of a binary file's resources. Does not free the binary
//! file handle itself.
//!
//! @param[in] bil_u  Binary file handle.
void
c3_bile_close(c3_bile* const bil_u);

//! Write to a new binary file.
//!
//! This is a higher level API that bundles c3_bile_open(), c3_bile_put_raw(),
//! and c3_bile_close() into a single convenient function. Think of it as a
//! type-safe macro.
//!
//! @param[in] pax_u  Path to binary file.
//! @param[in] dat_v  Array containing contents to write.
//! @param[in] dat_i  Length of `dat_v` in bytes.
static inline c3_t
c3_bile_write_new(const c3_path* const pax_u,
                  const void* const    dat_v,
                  const size_t         dat_i)
{
  c3_t     suc_t = 0;
  c3_bile* bil_u = c3_bile_open(pax_u);
  if ( !bil_u || 0 < c3_bile_len(bil_u) ) {
    goto end;
  }

  if ( !c3_bile_put_raw(bil_u, dat_v, dat_i) ) {
    goto end;
  }
  suc_t = 1;

end:
  c3_bile_close(bil_u);
  c3_free(bil_u);
  return suc_t;
}

//! Read from the beginning of an existing binary file.
//!
//! This is a higher level API that bundles c3_bile_open(), c3_bile_get_raw(),
//! and c3_bile_close() into a single convenient function. Think of it as a
//! type-safe macro.
//!
//! @param[in]  pax_u  Path to binary file.
//! @param[out] dat_v  Array to hold the contents.
//! @param[in]  dat_i  Length of `dat_v` in bytes.
static inline c3_t
c3_bile_read_existing(const c3_path* const pax_u,
                      void* const          dat_v,
                      const size_t         dat_i)
{
  c3_t     suc_t = 0;
  c3_bile* bil_u = c3_bile_open(pax_u);
  if ( !bil_u || c3_bile_len(bil_u) < dat_i ) {
    goto end;
  }

  if ( !c3_bile_get_raw(bil_u, dat_v, dat_i) ) {
    goto end;
  }
  suc_t = 1;

end:
  c3_bile_close(bil_u);
  c3_free(bil_u);
  return suc_t;
}

#endif /* ifndef C3_BILE_H */
