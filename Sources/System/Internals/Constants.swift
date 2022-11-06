/*
 This source file is part of the Swift System open source project

 Copyright (c) 2020 Apple Inc. and the Swift System project authors
 Licensed under Apache License v2.0 with Runtime Library Exception

 See https://swift.org/LICENSE.txt for license information
*/

// For platform constants redefined in Swift. We define them here so that
// they can be used anywhere without imports and without confusion to
// unavailable local decls.

#if os(macOS) || os(iOS) || os(watchOS) || os(tvOS)
import Darwin
#elseif os(Linux) || os(FreeBSD) || os(OpenBSD) || os(Android)
import Glibc
#elseif os(Windows)
import CSystem
import ucrt
#elseif canImport(WASILibc)
import WASILibc

@usableFromInline let E2BIG: Int32 = 1
@usableFromInline let EACCES: Int32 = 2
@usableFromInline let EADDRINUSE: Int32 = 3
@usableFromInline let EADDRNOTAVAIL: Int32 = 4
@usableFromInline let EAFNOSUPPORT: Int32 = 5
@usableFromInline let EAGAIN: Int32 = 6
@usableFromInline let EALREADY: Int32 = 7
@usableFromInline let EBADF: Int32 = 8
@usableFromInline let EBADMSG: Int32 = 9
@usableFromInline let EBUSY: Int32 = 10
@usableFromInline let ECANCELED: Int32 = 11
@usableFromInline let ECHILD: Int32 = 12
@usableFromInline let ECONNABORTED: Int32 = 13
@usableFromInline let ECONNREFUSED: Int32 = 14
@usableFromInline let ECONNRESET: Int32 = 15
@usableFromInline let EDEADLK: Int32 = 16
@usableFromInline let EDESTADDRREQ: Int32 = 17
@usableFromInline let EDOM: Int32 = 18
@usableFromInline let EDQUOT: Int32 = 19
@usableFromInline let EEXIST: Int32 = 20
@usableFromInline let EFAULT: Int32 = 21
@usableFromInline let EFBIG: Int32 = 22
@usableFromInline let EHOSTUNREACH: Int32 = 23
@usableFromInline let EIDRM: Int32 = 24
@usableFromInline let EILSEQ: Int32 = 25
@usableFromInline let EINPROGRESS: Int32 = 26
@usableFromInline let EINTR: Int32 = 27
@usableFromInline let EINVAL: Int32 = 28
@usableFromInline let EIO: Int32 = 29
@usableFromInline let EISCONN: Int32 = 30
@usableFromInline let EISDIR: Int32 = 31
@usableFromInline let ELOOP: Int32 = 32
@usableFromInline let EMFILE: Int32 = 33
@usableFromInline let EMLINK: Int32 = 34
@usableFromInline let EMSGSIZE: Int32 = 35
@usableFromInline let EMULTIHOP: Int32 = 36
@usableFromInline let ENAMETOOLONG: Int32 = 37
@usableFromInline let ENETDOWN: Int32 = 38
@usableFromInline let ENETRESET: Int32 = 39
@usableFromInline let ENETUNREACH: Int32 = 41
@usableFromInline let ENFILE: Int32 = 41
@usableFromInline let ENOBUFS: Int32 = 42
@usableFromInline let ENODEV: Int32 = 43
@usableFromInline let ENOENT: Int32 = 44
@usableFromInline let ENOEXEC: Int32 = 45
@usableFromInline let ENOLCK: Int32 = 46
@usableFromInline let ENOLINK: Int32 = 47
@usableFromInline let ENOMEM: Int32 = 48
@usableFromInline let ENOMSG: Int32 = 49
@usableFromInline let ENOPROTOOPT: Int32 = 50
@usableFromInline let ENOSPC: Int32 = 51
@usableFromInline let ENOSYS: Int32 = 52
@usableFromInline let ENOTCONN: Int32 = 53
@usableFromInline let ENOTDIR: Int32 = 54
@usableFromInline let ENOTEMPTY: Int32 = 55
@usableFromInline let ENOTRECOVERABLE: Int32 = 56
@usableFromInline let ENOTSOCK: Int32 = 57
@usableFromInline let ENOTSUP: Int32 = 58
@usableFromInline let ENOTTY: Int32 = 59
@usableFromInline let ENXIO: Int32 = 60
@usableFromInline let EOVERFLOW: Int32 = 61
@usableFromInline let EOWNERDEAD: Int32 = 62
@usableFromInline let EPERM: Int32 = 63
@usableFromInline let EPIPE: Int32 = 64
@usableFromInline let EPROTO: Int32 = 65
@usableFromInline let EPROTONOSUPPORT: Int32 = 66
@usableFromInline let EPROTOTYPE: Int32 = 67
@usableFromInline let ERANGE: Int32 = 68
@usableFromInline let EROFS: Int32 = 69
@usableFromInline let ESPIPE: Int32 = 70
@usableFromInline let ESRCH: Int32 = 71
@usableFromInline let ESTALE: Int32 = 72
@usableFromInline let ETIMEDOUT: Int32 = 73
@usableFromInline let ETXTBSY: Int32 = 74
@usableFromInline let EXDEV: Int32 = 75
@usableFromInline let ENOTCAPABLE: Int32 = 76
@usableFromInline let EOPNOTSUPP: Int32 = ENOTSUP
@usableFromInline let EWOULDBLOCK: Int32 = EAGAIN
@usableFromInline let ENODATA: Int32 = 9919
@usableFromInline let ENOSR: Int32 = 9922
@usableFromInline let ENOSTR: Int32 = 9924
@usableFromInline let ETIME: Int32 = 9935
@usableFromInline let O_APPEND: Int32 = 1 << 0
@usableFromInline let O_DSYNC: Int32 = 1 << 1
@usableFromInline let O_NONBLOCK: Int32 = 1 << 2
@usableFromInline let O_RSYNC: Int32 = 1 << 3
@usableFromInline let O_SYNC: Int32 = 1 << 4
@usableFromInline let O_CREAT: Int32 = (1 << 0) << 12
@usableFromInline let O_DIRECTORY: Int32 = (1 << 1) << 12
@usableFromInline let O_EXCL: Int32 = (1 << 2) << 12
@usableFromInline let O_TRUNC: Int32 = (1 << 3) << 12
@usableFromInline let O_NOFOLLOW: Int32 = 0x01000000
@usableFromInline let O_EXEC: Int32 = 0x02000000
@usableFromInline let O_RDONLY: Int32 = 0x04000000
@usableFromInline let O_SEARCH: Int32 = 0x08000000
@usableFromInline let O_WRONLY: Int32 = 0x10000000
@usableFromInline let O_ACCMODE: Int32 = O_EXEC | O_RDWR | O_SEARCH
@usableFromInline let SEEK_SET : Int32 = 0
@usableFromInline let SEEK_CUR : Int32 = 1
@usableFromInline let SEEK_END: Int32 = 2
#else
#error("Unsupported Platform")
#endif

// MARK: errno
#if os(macOS) || os(iOS) || os(watchOS) || os(tvOS)
@_alwaysEmitIntoClient
internal var _ERRNO_NOT_USED: CInt { 0 }
#endif

@_alwaysEmitIntoClient
internal var _EPERM: CInt { EPERM }

@_alwaysEmitIntoClient
internal var _ENOENT: CInt { ENOENT }

@_alwaysEmitIntoClient
internal var _ESRCH: CInt { ESRCH }

@_alwaysEmitIntoClient
internal var _EINTR: CInt { EINTR }

@_alwaysEmitIntoClient
internal var _EIO: CInt { EIO }

@_alwaysEmitIntoClient
internal var _ENXIO: CInt { ENXIO }

@_alwaysEmitIntoClient
internal var _E2BIG: CInt { E2BIG }

@_alwaysEmitIntoClient
internal var _ENOEXEC: CInt { ENOEXEC }

@_alwaysEmitIntoClient
internal var _EBADF: CInt { EBADF }

@_alwaysEmitIntoClient
internal var _ECHILD: CInt { ECHILD }

@_alwaysEmitIntoClient
internal var _EDEADLK: CInt { EDEADLK }

@_alwaysEmitIntoClient
internal var _ENOMEM: CInt { ENOMEM }

@_alwaysEmitIntoClient
internal var _EACCES: CInt { EACCES }

@_alwaysEmitIntoClient
internal var _EFAULT: CInt { EFAULT }

#if !os(Windows) && !os(WASI)
@_alwaysEmitIntoClient
internal var _ENOTBLK: CInt { ENOTBLK }
#endif

@_alwaysEmitIntoClient
internal var _EBUSY: CInt { EBUSY }

@_alwaysEmitIntoClient
internal var _EEXIST: CInt { EEXIST }

@_alwaysEmitIntoClient
internal var _EXDEV: CInt { EXDEV }

@_alwaysEmitIntoClient
internal var _ENODEV: CInt { ENODEV }

@_alwaysEmitIntoClient
internal var _ENOTDIR: CInt { ENOTDIR }

@_alwaysEmitIntoClient
internal var _EISDIR: CInt { EISDIR }

@_alwaysEmitIntoClient
internal var _EINVAL: CInt { EINVAL }

@_alwaysEmitIntoClient
internal var _ENFILE: CInt { ENFILE }

@_alwaysEmitIntoClient
internal var _EMFILE: CInt { EMFILE }

#if !os(Windows)
@_alwaysEmitIntoClient
internal var _ENOTTY: CInt { ENOTTY }

@_alwaysEmitIntoClient
internal var _ETXTBSY: CInt { ETXTBSY }
#endif

@_alwaysEmitIntoClient
internal var _EFBIG: CInt { EFBIG }

@_alwaysEmitIntoClient
internal var _ENOSPC: CInt { ENOSPC }

@_alwaysEmitIntoClient
internal var _ESPIPE: CInt { ESPIPE }

@_alwaysEmitIntoClient
internal var _EROFS: CInt { EROFS }

@_alwaysEmitIntoClient
internal var _EMLINK: CInt { EMLINK }

@_alwaysEmitIntoClient
internal var _EPIPE: CInt { EPIPE }

@_alwaysEmitIntoClient
internal var _EDOM: CInt { EDOM }

@_alwaysEmitIntoClient
internal var _ERANGE: CInt { ERANGE }

@_alwaysEmitIntoClient
internal var _EAGAIN: CInt { EAGAIN }

@_alwaysEmitIntoClient
internal var _EWOULDBLOCK: CInt { EWOULDBLOCK }

@_alwaysEmitIntoClient
internal var _EINPROGRESS: CInt { EINPROGRESS }

@_alwaysEmitIntoClient
internal var _EALREADY: CInt { EALREADY }

@_alwaysEmitIntoClient
internal var _ENOTSOCK: CInt { ENOTSOCK }

@_alwaysEmitIntoClient
internal var _EDESTADDRREQ: CInt { EDESTADDRREQ }

@_alwaysEmitIntoClient
internal var _EMSGSIZE: CInt { EMSGSIZE }

@_alwaysEmitIntoClient
internal var _EPROTOTYPE: CInt { EPROTOTYPE }

@_alwaysEmitIntoClient
internal var _ENOPROTOOPT: CInt { ENOPROTOOPT }

@_alwaysEmitIntoClient
internal var _EPROTONOSUPPORT: CInt { EPROTONOSUPPORT }

#if !os(WASI)
@_alwaysEmitIntoClient
internal var _ESOCKTNOSUPPORT: CInt {
#if os(Windows)
  return WSAESOCKTNOSUPPORT
#else
  return ESOCKTNOSUPPORT
#endif
}
#endif

@_alwaysEmitIntoClient
internal var _ENOTSUP: CInt {
#if os(Windows)
  return WSAEOPNOTSUPP
#else
  return ENOTSUP
#endif
}

#if !os(WASI)
@_alwaysEmitIntoClient
internal var _EPFNOSUPPORT: CInt {
#if os(Windows)
  return WSAEPFNOSUPPORT
#else
  return EPFNOSUPPORT
#endif
}
#endif

@_alwaysEmitIntoClient
internal var _EAFNOSUPPORT: CInt { EAFNOSUPPORT }

@_alwaysEmitIntoClient
internal var _EADDRINUSE: CInt { EADDRINUSE }

@_alwaysEmitIntoClient
internal var _EADDRNOTAVAIL: CInt { EADDRNOTAVAIL }

@_alwaysEmitIntoClient
internal var _ENETDOWN: CInt { ENETDOWN }

@_alwaysEmitIntoClient
internal var _ENETUNREACH: CInt { ENETUNREACH }

@_alwaysEmitIntoClient
internal var _ENETRESET: CInt { ENETRESET }

@_alwaysEmitIntoClient
internal var _ECONNABORTED: CInt { ECONNABORTED }

@_alwaysEmitIntoClient
internal var _ECONNRESET: CInt { ECONNRESET }

@_alwaysEmitIntoClient
internal var _ENOBUFS: CInt { ENOBUFS }

@_alwaysEmitIntoClient
internal var _EISCONN: CInt { EISCONN }

@_alwaysEmitIntoClient
internal var _ENOTCONN: CInt { ENOTCONN }

#if !os(WASI)
@_alwaysEmitIntoClient
internal var _ESHUTDOWN: CInt {
#if os(Windows)
  return WSAESHUTDOWN
#else
  return ESHUTDOWN
#endif
}
#endif

#if !os(WASI)
@_alwaysEmitIntoClient
internal var _ETOOMANYREFS: CInt {
#if os(Windows)
  return WSAETOOMANYREFS
#else
  return ETOOMANYREFS
#endif
}
#endif

@_alwaysEmitIntoClient
internal var _ETIMEDOUT: CInt { ETIMEDOUT }

@_alwaysEmitIntoClient
internal var _ECONNREFUSED: CInt { ECONNREFUSED }

@_alwaysEmitIntoClient
internal var _ELOOP: CInt { ELOOP }

@_alwaysEmitIntoClient
internal var _ENAMETOOLONG: CInt { ENAMETOOLONG }

#if !os(WASI)
@_alwaysEmitIntoClient
internal var _EHOSTDOWN: CInt {
#if os(Windows)
  return WSAEHOSTDOWN
#else
  return EHOSTDOWN
#endif
}
#endif

@_alwaysEmitIntoClient
internal var _EHOSTUNREACH: CInt { EHOSTUNREACH }

@_alwaysEmitIntoClient
internal var _ENOTEMPTY: CInt { ENOTEMPTY }

#if os(macOS) || os(iOS) || os(watchOS) || os(tvOS)
@_alwaysEmitIntoClient
internal var _EPROCLIM: CInt { EPROCLIM }
#endif

#if !os(WASI)
@_alwaysEmitIntoClient
internal var _EUSERS: CInt {
#if os(Windows)
  return WSAEUSERS
#else
  return EUSERS
#endif
}
#endif

@_alwaysEmitIntoClient
internal var _EDQUOT: CInt {
#if os(Windows)
  return WSAEDQUOT
#else
  return EDQUOT
#endif
}

@_alwaysEmitIntoClient
internal var _ESTALE: CInt {
#if os(Windows)
  return WSAESTALE
#else
  return ESTALE
#endif
}

#if !os(WASI)
@_alwaysEmitIntoClient
internal var _EREMOTE: CInt {
#if os(Windows)
  return WSAEREMOTE
#else
  return EREMOTE
#endif
}
#endif

#if os(macOS) || os(iOS) || os(watchOS) || os(tvOS)
@_alwaysEmitIntoClient
internal var _EBADRPC: CInt { EBADRPC }

@_alwaysEmitIntoClient
internal var _ERPCMISMATCH: CInt { ERPCMISMATCH }

@_alwaysEmitIntoClient
internal var _EPROGUNAVAIL: CInt { EPROGUNAVAIL }

@_alwaysEmitIntoClient
internal var _EPROGMISMATCH: CInt { EPROGMISMATCH }

@_alwaysEmitIntoClient
internal var _EPROCUNAVAIL: CInt { EPROCUNAVAIL }
#endif

@_alwaysEmitIntoClient
internal var _ENOLCK: CInt { ENOLCK }

@_alwaysEmitIntoClient
internal var _ENOSYS: CInt { ENOSYS }

#if os(macOS) || os(iOS) || os(watchOS) || os(tvOS)
@_alwaysEmitIntoClient
internal var _EFTYPE: CInt { EFTYPE }

@_alwaysEmitIntoClient
internal var _EAUTH: CInt { EAUTH }

@_alwaysEmitIntoClient
internal var _ENEEDAUTH: CInt { ENEEDAUTH }

@_alwaysEmitIntoClient
internal var _EPWROFF: CInt { EPWROFF }

@_alwaysEmitIntoClient
internal var _EDEVERR: CInt { EDEVERR }
#endif

#if !os(Windows)
@_alwaysEmitIntoClient
internal var _EOVERFLOW: CInt { EOVERFLOW }
#endif

#if os(macOS) || os(iOS) || os(watchOS) || os(tvOS)
@_alwaysEmitIntoClient
internal var _EBADEXEC: CInt { EBADEXEC }

@_alwaysEmitIntoClient
internal var _EBADARCH: CInt { EBADARCH }

@_alwaysEmitIntoClient
internal var _ESHLIBVERS: CInt { ESHLIBVERS }

@_alwaysEmitIntoClient
internal var _EBADMACHO: CInt { EBADMACHO }
#endif

@_alwaysEmitIntoClient
internal var _ECANCELED: CInt { ECANCELED }

#if !os(Windows)
@_alwaysEmitIntoClient
internal var _EIDRM: CInt { EIDRM }

@_alwaysEmitIntoClient
internal var _ENOMSG: CInt { ENOMSG }
#endif

@_alwaysEmitIntoClient
internal var _EILSEQ: CInt { EILSEQ }

#if os(macOS) || os(iOS) || os(watchOS) || os(tvOS)
@_alwaysEmitIntoClient
internal var _ENOATTR: CInt { ENOATTR }
#endif

#if !os(Windows)
@_alwaysEmitIntoClient
internal var _EBADMSG: CInt { EBADMSG }

#if !os(OpenBSD)
@_alwaysEmitIntoClient
internal var _EMULTIHOP: CInt { EMULTIHOP }

@_alwaysEmitIntoClient
internal var _ENODATA: CInt { ENODATA }

@_alwaysEmitIntoClient
internal var _ENOLINK: CInt { ENOLINK }

@_alwaysEmitIntoClient
internal var _ENOSR: CInt { ENOSR }

@_alwaysEmitIntoClient
internal var _ENOSTR: CInt { ENOSTR }
#endif 

@_alwaysEmitIntoClient
internal var _EPROTO: CInt { EPROTO }

#if !os(OpenBSD)
@_alwaysEmitIntoClient
internal var _ETIME: CInt { ETIME }
#endif
#endif

@_alwaysEmitIntoClient
internal var _EOPNOTSUPP: CInt { EOPNOTSUPP }

#if os(macOS) || os(iOS) || os(watchOS) || os(tvOS)
@_alwaysEmitIntoClient
internal var _ENOPOLICY: CInt { ENOPOLICY }
#endif

#if !os(Windows)
@_alwaysEmitIntoClient
internal var _ENOTRECOVERABLE: CInt { ENOTRECOVERABLE }

@_alwaysEmitIntoClient
internal var _EOWNERDEAD: CInt { EOWNERDEAD }
#endif

#if os(macOS) || os(iOS) || os(watchOS) || os(tvOS)
@_alwaysEmitIntoClient
internal var _EQFULL: CInt { EQFULL }

@_alwaysEmitIntoClient
internal var _ELAST: CInt { ELAST }
#endif

// MARK: File Operations

@_alwaysEmitIntoClient
internal var _O_RDONLY: CInt { O_RDONLY }

@_alwaysEmitIntoClient
internal var _O_WRONLY: CInt { O_WRONLY }

@_alwaysEmitIntoClient
internal var _O_RDWR: CInt { O_RDWR }

#if !os(Windows)
// TODO: API?
@_alwaysEmitIntoClient
internal var _O_ACCMODE: CInt { O_ACCMODE }

@_alwaysEmitIntoClient
internal var _O_NONBLOCK: CInt { O_NONBLOCK }
#endif

@_alwaysEmitIntoClient
internal var _O_APPEND: CInt { O_APPEND }

#if os(macOS) || os(iOS) || os(watchOS) || os(tvOS)
@_alwaysEmitIntoClient
internal var _O_SHLOCK: CInt { O_SHLOCK }

@_alwaysEmitIntoClient
internal var _O_EXLOCK: CInt { O_EXLOCK }
#endif

#if !os(Windows)
#if !os(WASI)
// TODO: API?
@_alwaysEmitIntoClient
internal var _O_ASYNC: CInt { O_ASYNC }
#endif

@_alwaysEmitIntoClient
internal var _O_NOFOLLOW: CInt { O_NOFOLLOW }
#endif

@_alwaysEmitIntoClient
internal var _O_CREAT: CInt { O_CREAT }

@_alwaysEmitIntoClient
internal var _O_TRUNC: CInt { O_TRUNC }

@_alwaysEmitIntoClient
internal var _O_EXCL: CInt { O_EXCL }

#if os(macOS) || os(iOS) || os(watchOS) || os(tvOS)
@_alwaysEmitIntoClient
internal var _O_EVTONLY: CInt { O_EVTONLY }
#endif

#if !os(Windows)
// TODO: API?
@_alwaysEmitIntoClient
internal var _O_NOCTTY: CInt { O_NOCTTY }

@_alwaysEmitIntoClient
internal var _O_DIRECTORY: CInt { O_DIRECTORY }
#endif

#if os(macOS) || os(iOS) || os(watchOS) || os(tvOS)
@_alwaysEmitIntoClient
internal var _O_SYMLINK: CInt { O_SYMLINK }
#endif

#if !os(Windows)
@_alwaysEmitIntoClient
internal var _O_CLOEXEC: CInt { O_CLOEXEC }
#endif

@_alwaysEmitIntoClient
internal var _SEEK_SET: CInt { SEEK_SET }

@_alwaysEmitIntoClient
internal var _SEEK_CUR: CInt { SEEK_CUR }

@_alwaysEmitIntoClient
internal var _SEEK_END: CInt { SEEK_END }

#if os(macOS) || os(iOS) || os(watchOS) || os(tvOS)
@_alwaysEmitIntoClient
internal var _SEEK_HOLE: CInt { SEEK_HOLE }

@_alwaysEmitIntoClient
internal var _SEEK_DATA: CInt { SEEK_DATA }
#endif

