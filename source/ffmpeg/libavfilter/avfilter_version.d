/*
 * Version macros.
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
module ffmpeg.libavfilter.avfilter_version;

import ffmpeg.libavutil.avutil_version;

extern (C):

/**
 * @file
 * @ingroup lavfi
 * Libavfilter version macros
 */

enum LIBAVFILTER_VERSION_MAJOR = 7;
enum LIBAVFILTER_VERSION_MINOR = 110;
enum LIBAVFILTER_VERSION_MICRO = 100;

enum LIBAVFILTER_VERSION_INT = AV_VERSION_INT(LIBAVFILTER_VERSION_MAJOR, LIBAVFILTER_VERSION_MINOR, LIBAVFILTER_VERSION_MICRO);
enum LIBAVFILTER_VERSION = AV_VERSION(LIBAVFILTER_VERSION_MAJOR, LIBAVFILTER_VERSION_MINOR, LIBAVFILTER_VERSION_MICRO);
enum LIBAVFILTER_BUILD = LIBAVFILTER_VERSION_INT;

/**
 * FF_API_* defines may be placed below to indicate public API that will be
 * dropped at a future version bump. The defines themselves are not part of
 * the public API and may change, break or disappear at any time.
 */

enum FF_API_OLD_FILTER_OPTS_ERROR = LIBAVFILTER_VERSION_MAJOR < 8;

enum FF_API_LAVR_OPTS = LIBAVFILTER_VERSION_MAJOR < 8;

enum FF_API_FILTER_GET_SET = LIBAVFILTER_VERSION_MAJOR < 8;

enum FF_API_SWS_PARAM_OPTION = LIBAVFILTER_VERSION_MAJOR < 8;

enum FF_API_NEXT = LIBAVFILTER_VERSION_MAJOR < 8;

enum FF_API_FILTER_LINK_SET_CLOSED = LIBAVFILTER_VERSION_MAJOR < 8;

enum FF_API_BUFFERSINK_ALLOC = LIBAVFILTER_VERSION_MAJOR < 9;

/* AVFILTER_VERSION_H */
