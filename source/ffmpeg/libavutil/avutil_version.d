/*
 * copyright (c) 2003 Fabrice Bellard
 *
 * This file is part of FFmpeg.
 *
 * FFmpeg is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * FFmpeg is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with FFmpeg; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
 */

/**
 * @file
 * @ingroup lavu
 * Libavutil version macros
 */
module ffmpeg.libavutil.avutil_version;

import ffmpeg.libavutil;

extern (C):

/**
 * @addtogroup version_utils
 *
 * Useful to check and match library version in order to maintain
 * backward compatibility.
 *
 * The FFmpeg libraries follow a versioning sheme very similar to
 * Semantic Versioning (http://semver.org/)
 * The difference is that the component called PATCH is called MICRO in FFmpeg
 * and its value is reset to 100 instead of 0 to keep it above or equal to 100.
 * Also we do not increase MICRO for every bugfix or change in git master.
 *
 * Prior to FFmpeg 3.2 point releases did not change any lib version number to
 * avoid aliassing different git master checkouts.
 * Starting with FFmpeg 3.2, the released library versions will occupy
 * a separate MAJOR.MINOR that is not used on the master development branch.
 * That is if we branch a release of master 55.10.123 we will bump to 55.11.100
 * for the release and master will continue at 55.12.100 after it. Each new
 * point release will then bump the MICRO improving the usefulness of the lib
 * versions.
 *
 * @{
 */

extern (D) auto AV_VERSION_INT(T0, T1, T2)(auto ref T0 a, auto ref T1 b, auto ref T2 c)
{
    return a << 16 | b << 8 | c;
}

extern (D) auto AV_VERSION_DOT(T0, T1, T2)(auto ref T0 a, auto ref T1 b, auto ref T2 c)
{
    import std.format;
    return format("%s.%s.%s", a, b, c);
}


alias AV_VERSION = AV_VERSION_DOT;

/**
 * Extract version components from the full ::AV_VERSION_INT int as returned
 * by functions like ::avformat_version() and ::avcodec_version()
 */
extern (D) auto AV_VERSION_MAJOR(T)(auto ref T a)
{
    return a >> 16;
}

extern (D) auto AV_VERSION_MINOR(T)(auto ref T a)
{
    return (a & 0x00FF00) >> 8;
}

extern (D) auto AV_VERSION_MICRO(T)(auto ref T a)
{
    return a & 0xFF;
}

/**
 * @}
 */

/**
 * @defgroup lavu_ver Version and Build diagnostics
 *
 * Macros and function useful to check at compiletime and at runtime
 * which version of libavutil is in use.
 *
 * @{
 */

enum LIBAVUTIL_VERSION_MAJOR = 56;
enum LIBAVUTIL_VERSION_MINOR = 70;
enum LIBAVUTIL_VERSION_MICRO = 100;

enum LIBAVUTIL_VERSION_INT = AV_VERSION_INT(LIBAVUTIL_VERSION_MAJOR, LIBAVUTIL_VERSION_MINOR, LIBAVUTIL_VERSION_MICRO);
enum LIBAVUTIL_VERSION = AV_VERSION(LIBAVUTIL_VERSION_MAJOR, LIBAVUTIL_VERSION_MINOR, LIBAVUTIL_VERSION_MICRO);
enum LIBAVUTIL_BUILD = LIBAVUTIL_VERSION_INT;

/**
 * @defgroup lavu_depr_guards Deprecation Guards
 * FF_API_* defines may be placed below to indicate public API that will be
 * dropped at a future version bump. The defines themselves are not part of
 * the public API and may change, break or disappear at any time.
 *
 * @note, when bumping the major version it is recommended to manually
 * disable each FF_API_* in its own commit instead of disabling them all
 * at once through the bump. This improves the git bisect-ability of the change.
 *
 * @{
 */

enum FF_API_VAAPI = LIBAVUTIL_VERSION_MAJOR < 57;

enum FF_API_FRAME_QP = LIBAVUTIL_VERSION_MAJOR < 57;

enum FF_API_PLUS1_MINUS1 = LIBAVUTIL_VERSION_MAJOR < 57;

enum FF_API_ERROR_FRAME = LIBAVUTIL_VERSION_MAJOR < 57;

enum FF_API_PKT_PTS = LIBAVUTIL_VERSION_MAJOR < 57;

enum FF_API_CRYPTO_SIZE_T = LIBAVUTIL_VERSION_MAJOR < 57;

enum FF_API_FRAME_GET_SET = LIBAVUTIL_VERSION_MAJOR < 57;

enum FF_API_PSEUDOPAL = LIBAVUTIL_VERSION_MAJOR < 57;

enum FF_API_CHILD_CLASS_NEXT = LIBAVUTIL_VERSION_MAJOR < 57;

enum FF_API_BUFFER_SIZE_T = LIBAVUTIL_VERSION_MAJOR < 57;

enum FF_API_D2STR = LIBAVUTIL_VERSION_MAJOR < 58;

enum FF_API_DECLARE_ALIGNED = LIBAVUTIL_VERSION_MAJOR < 58;

/**
 * @}
 * @}
 */

/* AVUTIL_VERSION_H */
