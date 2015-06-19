.class public Lcom/fsck/k9/mail/internet/MimeUtility;
.super Ljava/lang/Object;
.source "MimeUtility.java"


# static fields
.field public static final DEFAULT_ATTACHMENT_MIME_TYPE:Ljava/lang/String; = "application/octet-stream"

.field public static final MIME_TYPE_BY_EXTENSION_MAP:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v8, "application/vnd.ms-excel"

    const-string v7, "application/octet-stream"

    const/16 v0, 0xbd

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v4

    const-string v2, "application/octet-stream"

    aput-object v7, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "323"

    aput-object v2, v1, v4

    const-string v2, "text/h323"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "acx"

    aput-object v2, v1, v4

    const-string v2, "application/internet-property-stream"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ai"

    aput-object v3, v2, v4

    const-string v3, "application/postscript"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "aif"

    aput-object v3, v2, v4

    const-string v3, "audio/x-aiff"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "aifc"

    aput-object v3, v2, v4

    const-string v3, "audio/x-aiff"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "aiff"

    aput-object v3, v2, v4

    const-string v3, "audio/x-aiff"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "asf"

    aput-object v3, v2, v4

    const-string v3, "video/x-ms-asf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "asr"

    aput-object v3, v2, v4

    const-string v3, "video/x-ms-asf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "asx"

    aput-object v3, v2, v4

    const-string v3, "video/x-ms-asf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "au"

    aput-object v3, v2, v4

    const-string v3, "audio/basic"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "avi"

    aput-object v3, v2, v4

    const-string v3, "video/x-msvideo"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "axs"

    aput-object v3, v2, v4

    const-string v3, "application/olescript"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "bas"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "bcpio"

    aput-object v3, v2, v4

    const-string v3, "application/x-bcpio"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "bin"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v7, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "bmp"

    aput-object v3, v2, v4

    const-string v3, "image/bmp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "c"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cat"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-pkiseccat"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cdf"

    aput-object v3, v2, v4

    const-string v3, "application/x-cdf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cer"

    aput-object v3, v2, v4

    const-string v3, "application/x-x509-ca-cert"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "class"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v7, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "clp"

    aput-object v3, v2, v4

    const-string v3, "application/x-msclip"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cmx"

    aput-object v3, v2, v4

    const-string v3, "image/x-cmx"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cod"

    aput-object v3, v2, v4

    const-string v3, "image/cis-cod"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cpio"

    aput-object v3, v2, v4

    const-string v3, "application/x-cpio"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "crd"

    aput-object v3, v2, v4

    const-string v3, "application/x-mscardfile"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "crl"

    aput-object v3, v2, v4

    const-string v3, "application/pkix-crl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "crt"

    aput-object v3, v2, v4

    const-string v3, "application/x-x509-ca-cert"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "csh"

    aput-object v3, v2, v4

    const-string v3, "application/x-csh"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "css"

    aput-object v3, v2, v4

    const-string v3, "text/css"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dcr"

    aput-object v3, v2, v4

    const-string v3, "application/x-director"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "der"

    aput-object v3, v2, v4

    const-string v3, "application/x-x509-ca-cert"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dir"

    aput-object v3, v2, v4

    const-string v3, "application/x-director"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dll"

    aput-object v3, v2, v4

    const-string v3, "application/x-msdownload"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dms"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v7, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "doc"

    aput-object v3, v2, v4

    const-string v3, "application/msword"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dot"

    aput-object v3, v2, v4

    const-string v3, "application/msword"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dvi"

    aput-object v3, v2, v4

    const-string v3, "application/x-dvi"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dxr"

    aput-object v3, v2, v4

    const-string v3, "application/x-director"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "eps"

    aput-object v3, v2, v4

    const-string v3, "application/postscript"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "etx"

    aput-object v3, v2, v4

    const-string v3, "text/x-setext"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "evy"

    aput-object v3, v2, v4

    const-string v3, "application/envoy"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "exe"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v7, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "fif"

    aput-object v3, v2, v4

    const-string v3, "application/fractals"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "flr"

    aput-object v3, v2, v4

    const-string v3, "x-world/x-vrml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gif"

    aput-object v3, v2, v4

    const-string v3, "image/gif"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gtar"

    aput-object v3, v2, v4

    const-string v3, "application/x-gtar"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gz"

    aput-object v3, v2, v4

    const-string v3, "application/x-gzip"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "h"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "hdf"

    aput-object v3, v2, v4

    const-string v3, "application/x-hdf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "hlp"

    aput-object v3, v2, v4

    const-string v3, "application/winhlp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "hqx"

    aput-object v3, v2, v4

    const-string v3, "application/mac-binhex40"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "hta"

    aput-object v3, v2, v4

    const-string v3, "application/hta"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "htc"

    aput-object v3, v2, v4

    const-string v3, "text/x-component"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "htm"

    aput-object v3, v2, v4

    const-string v3, "text/html"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "html"

    aput-object v3, v2, v4

    const-string v3, "text/html"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "htt"

    aput-object v3, v2, v4

    const-string v3, "text/webviewhtml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ico"

    aput-object v3, v2, v4

    const-string v3, "image/x-icon"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ief"

    aput-object v3, v2, v4

    const-string v3, "image/ief"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "iii"

    aput-object v3, v2, v4

    const-string v3, "application/x-iphone"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ins"

    aput-object v3, v2, v4

    const-string v3, "application/x-internet-signup"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "isp"

    aput-object v3, v2, v4

    const-string v3, "application/x-internet-signup"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "jfif"

    aput-object v3, v2, v4

    const-string v3, "image/pipeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "jpe"

    aput-object v3, v2, v4

    const-string v3, "image/jpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "jpeg"

    aput-object v3, v2, v4

    const-string v3, "image/jpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "jpg"

    aput-object v3, v2, v4

    const-string v3, "image/jpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "js"

    aput-object v3, v2, v4

    const-string v3, "application/x-javascript"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "latex"

    aput-object v3, v2, v4

    const-string v3, "application/x-latex"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lha"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v7, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lsf"

    aput-object v3, v2, v4

    const-string v3, "video/x-la-asf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lsx"

    aput-object v3, v2, v4

    const-string v3, "video/x-la-asf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lzh"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v7, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "m13"

    aput-object v3, v2, v4

    const-string v3, "application/x-msmediaview"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "m14"

    aput-object v3, v2, v4

    const-string v3, "application/x-msmediaview"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "m3u"

    aput-object v3, v2, v4

    const-string v3, "audio/x-mpegurl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "man"

    aput-object v3, v2, v4

    const-string v3, "application/x-troff-man"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mdb"

    aput-object v3, v2, v4

    const-string v3, "application/x-msaccess"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "me"

    aput-object v3, v2, v4

    const-string v3, "application/x-troff-me"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mht"

    aput-object v3, v2, v4

    const-string v3, "message/rfc822"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mhtml"

    aput-object v3, v2, v4

    const-string v3, "message/rfc822"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mid"

    aput-object v3, v2, v4

    const-string v3, "audio/mid"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mny"

    aput-object v3, v2, v4

    const-string v3, "application/x-msmoney"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mov"

    aput-object v3, v2, v4

    const-string v3, "video/quicktime"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "movie"

    aput-object v3, v2, v4

    const-string v3, "video/x-sgi-movie"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mp2"

    aput-object v3, v2, v4

    const-string v3, "video/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mp3"

    aput-object v3, v2, v4

    const-string v3, "audio/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mpa"

    aput-object v3, v2, v4

    const-string v3, "video/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mpe"

    aput-object v3, v2, v4

    const-string v3, "video/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mpeg"

    aput-object v3, v2, v4

    const-string v3, "video/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mpg"

    aput-object v3, v2, v4

    const-string v3, "video/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mpp"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-project"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mpv2"

    aput-object v3, v2, v4

    const-string v3, "video/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ms"

    aput-object v3, v2, v4

    const-string v3, "application/x-troff-ms"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mvb"

    aput-object v3, v2, v4

    const-string v3, "application/x-msmediaview"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "nws"

    aput-object v3, v2, v4

    const-string v3, "message/rfc822"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "oda"

    aput-object v3, v2, v4

    const-string v3, "application/oda"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "p10"

    aput-object v3, v2, v4

    const-string v3, "application/pkcs10"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "p12"

    aput-object v3, v2, v4

    const-string v3, "application/x-pkcs12"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "p7b"

    aput-object v3, v2, v4

    const-string v3, "application/x-pkcs7-certificates"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "p7c"

    aput-object v3, v2, v4

    const-string v3, "application/x-pkcs7-mime"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "p7m"

    aput-object v3, v2, v4

    const-string v3, "application/x-pkcs7-mime"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "p7r"

    aput-object v3, v2, v4

    const-string v3, "application/x-pkcs7-certreqresp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "p7s"

    aput-object v3, v2, v4

    const-string v3, "application/x-pkcs7-signature"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pbm"

    aput-object v3, v2, v4

    const-string v3, "image/x-portable-bitmap"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pdf"

    aput-object v3, v2, v4

    const-string v3, "application/pdf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pfx"

    aput-object v3, v2, v4

    const-string v3, "application/x-pkcs12"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pgm"

    aput-object v3, v2, v4

    const-string v3, "image/x-portable-graymap"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pko"

    aput-object v3, v2, v4

    const-string v3, "application/ynd.ms-pkipko"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pma"

    aput-object v3, v2, v4

    const-string v3, "application/x-perfmon"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pmc"

    aput-object v3, v2, v4

    const-string v3, "application/x-perfmon"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pml"

    aput-object v3, v2, v4

    const-string v3, "application/x-perfmon"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x70

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pmr"

    aput-object v3, v2, v4

    const-string v3, "application/x-perfmon"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x71

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pmw"

    aput-object v3, v2, v4

    const-string v3, "application/x-perfmon"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x72

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "png"

    aput-object v3, v2, v4

    const-string v3, "image/png"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x73

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pnm"

    aput-object v3, v2, v4

    const-string v3, "image/x-portable-anymap"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x74

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pot,"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-powerpoint"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x75

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ppm"

    aput-object v3, v2, v4

    const-string v3, "image/x-portable-pixmap"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x76

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pps"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-powerpoint"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x77

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ppt"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-powerpoint"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x78

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "prf"

    aput-object v3, v2, v4

    const-string v3, "application/pics-rules"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x79

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ps"

    aput-object v3, v2, v4

    const-string v3, "application/postscript"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pub"

    aput-object v3, v2, v4

    const-string v3, "application/x-mspublisher"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "qt"

    aput-object v3, v2, v4

    const-string v3, "video/quicktime"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ra"

    aput-object v3, v2, v4

    const-string v3, "audio/x-pn-realaudio"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ram"

    aput-object v3, v2, v4

    const-string v3, "audio/x-pn-realaudio"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ras"

    aput-object v3, v2, v4

    const-string v3, "image/x-cmu-raster"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rgb"

    aput-object v3, v2, v4

    const-string v3, "image/x-rgb"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x80

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rmi"

    aput-object v3, v2, v4

    const-string v3, "audio/mid"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x81

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "roff"

    aput-object v3, v2, v4

    const-string v3, "application/x-troff"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x82

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rtf"

    aput-object v3, v2, v4

    const-string v3, "application/rtf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rtx"

    aput-object v3, v2, v4

    const-string v3, "text/richtext"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x84

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "scd"

    aput-object v3, v2, v4

    const-string v3, "application/x-msschedule"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x85

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sct"

    aput-object v3, v2, v4

    const-string v3, "text/scriptlet"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x86

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "setpay"

    aput-object v3, v2, v4

    const-string v3, "application/set-payment-initiation"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x87

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "setreg"

    aput-object v3, v2, v4

    const-string v3, "application/set-registration-initiation"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x88

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sh"

    aput-object v3, v2, v4

    const-string v3, "application/x-sh"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x89

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "shar"

    aput-object v3, v2, v4

    const-string v3, "application/x-shar"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sit"

    aput-object v3, v2, v4

    const-string v3, "application/x-stuffit"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "snd"

    aput-object v3, v2, v4

    const-string v3, "audio/basic"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "spc"

    aput-object v3, v2, v4

    const-string v3, "application/x-pkcs7-certificates"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "spl"

    aput-object v3, v2, v4

    const-string v3, "application/futuresplash"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "src"

    aput-object v3, v2, v4

    const-string v3, "application/x-wais-source"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sst"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-pkicertstore"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x90

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "stl"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-pkistl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x91

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "stm"

    aput-object v3, v2, v4

    const-string v3, "text/html"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x92

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "svg"

    aput-object v3, v2, v4

    const-string v3, "image/svg+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x93

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sv4cpio"

    aput-object v3, v2, v4

    const-string v3, "application/x-sv4cpio"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x94

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sv4crc"

    aput-object v3, v2, v4

    const-string v3, "application/x-sv4crc"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x95

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "swf"

    aput-object v3, v2, v4

    const-string v3, "application/x-shockwave-flash"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x96

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "t"

    aput-object v3, v2, v4

    const-string v3, "application/x-troff"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x97

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "tar"

    aput-object v3, v2, v4

    const-string v3, "application/x-tar"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x98

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "tcl"

    aput-object v3, v2, v4

    const-string v3, "application/x-tcl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x99

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "tex"

    aput-object v3, v2, v4

    const-string v3, "application/x-tex"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "texi"

    aput-object v3, v2, v4

    const-string v3, "application/x-texinfo"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "texinfo"

    aput-object v3, v2, v4

    const-string v3, "application/x-texinfo"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "tgz"

    aput-object v3, v2, v4

    const-string v3, "application/x-compressed"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "tif"

    aput-object v3, v2, v4

    const-string v3, "image/tiff"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "tiff"

    aput-object v3, v2, v4

    const-string v3, "image/tiff"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "tr"

    aput-object v3, v2, v4

    const-string v3, "application/x-troff"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "trm"

    aput-object v3, v2, v4

    const-string v3, "application/x-msterminal"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "tsv"

    aput-object v3, v2, v4

    const-string v3, "text/tab-separated-values"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "txt"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uls"

    aput-object v3, v2, v4

    const-string v3, "text/iuls"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ustar"

    aput-object v3, v2, v4

    const-string v3, "application/x-ustar"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "vcf"

    aput-object v3, v2, v4

    const-string v3, "text/x-vcard"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "vrml"

    aput-object v3, v2, v4

    const-string v3, "x-world/x-vrml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wav"

    aput-object v3, v2, v4

    const-string v3, "audio/x-wav"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wcm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-works"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wdb"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-works"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wks"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-works"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xab

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wmf"

    aput-object v3, v2, v4

    const-string v3, "application/x-msmetafile"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xac

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wps"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-works"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xad

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wri"

    aput-object v3, v2, v4

    const-string v3, "application/x-mswrite"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xae

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wrl"

    aput-object v3, v2, v4

    const-string v3, "x-world/x-vrml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wrz"

    aput-object v3, v2, v4

    const-string v3, "x-world/x-vrml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xaf"

    aput-object v3, v2, v4

    const-string v3, "x-world/x-vrml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xbm"

    aput-object v3, v2, v4

    const-string v3, "image/x-xbitmap"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xla"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-excel"

    aput-object v8, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xlc"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-excel"

    aput-object v8, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xlm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-excel"

    aput-object v8, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xls"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-excel"

    aput-object v8, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xlt"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-excel"

    aput-object v8, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xlw"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-excel"

    aput-object v8, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xof"

    aput-object v3, v2, v4

    const-string v3, "x-world/x-vrml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xpm"

    aput-object v3, v2, v4

    const-string v3, "image/x-xpixmap"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xba

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xwd"

    aput-object v3, v2, v4

    const-string v3, "image/x-xwindowdump"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "z"

    aput-object v3, v2, v4

    const-string v3, "application/x-compress"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "zip"

    aput-object v3, v2, v4

    const-string v3, "application/zip"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/mail/internet/MimeUtility;->MIME_TYPE_BY_EXTENSION_MAP:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectParts(Lcom/fsck/k9/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/Part;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fsck/k9/mail/Part;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fsck/k9/mail/Part;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "filename"

    invoke-static {v1, v7}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_13
    const-string v7, "attachment"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_25

    if-eqz v2, :cond_46

    const-string v7, "inline"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_46

    :cond_25
    const/4 v7, 0x1

    move v0, v7

    :goto_27
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v7

    instance-of v7, v7, Lcom/fsck/k9/mail/Multipart;

    if-eqz v7, :cond_49

    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v6

    check-cast v6, Lcom/fsck/k9/mail/Multipart;

    const/4 v4, 0x0

    :goto_36
    invoke-virtual {v6}, Lcom/fsck/k9/mail/Multipart;->getCount()I

    move-result v7

    if-ge v4, v7, :cond_5a

    invoke-virtual {v6, v4}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/BodyPart;

    move-result-object v7

    invoke-static {v7, p1, p2}, Lcom/fsck/k9/mail/internet/MimeUtility;->collectParts(Lcom/fsck/k9/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    :cond_46
    const/4 v7, 0x0

    move v0, v7

    goto :goto_27

    :cond_49
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v7

    instance-of v7, v7, Lcom/fsck/k9/mail/Message;

    if-eqz v7, :cond_5b

    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v5

    check-cast v5, Lcom/fsck/k9/mail/Message;

    invoke-static {v5, p1, p2}, Lcom/fsck/k9/mail/internet/MimeUtility;->collectParts(Lcom/fsck/k9/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_5a
    :goto_5a
    return-void

    :cond_5b
    if-nez v0, :cond_6d

    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "text/html"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6d

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_6d
    if-nez v0, :cond_7f

    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "text/plain"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7f

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_7f
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static decodeBody(Ljava/io/InputStream;Ljava/lang/String;)Lcom/fsck/k9/mail/Body;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_15

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "quoted-printable"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    new-instance v0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    :cond_15
    :goto_15
    new-instance v2, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;

    invoke-direct {v2}, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;-><init>()V

    invoke-virtual {v2}, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-object v2

    :cond_25
    const-string v3, "base64"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    new-instance v0, Lorg/apache/james/mime4j/decoder/Base64InputStream;

    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/decoder/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    goto :goto_15
.end method

.method public static findFirstPartByMimeType(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v5

    instance-of v5, v5, Lcom/fsck/k9/mail/Multipart;

    if-eqz v5, :cond_24

    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/mail/Multipart;

    const/4 v2, 0x0

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Multipart;->getCount()I

    move-result v1

    :goto_13
    if-ge v2, v1, :cond_30

    invoke-virtual {v3, v2}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/BodyPart;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/fsck/k9/mail/internet/MimeUtility;->findFirstPartByMimeType(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;

    move-result-object v4

    if-eqz v4, :cond_21

    move-object v5, v4

    :goto_20
    return-object v5

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_24
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    move-object v5, p0

    goto :goto_20

    :cond_30
    const/4 v5, 0x0

    goto :goto_20
.end method

.method public static findPartByContentId(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v10

    instance-of v10, v10, Lcom/fsck/k9/mail/Multipart;

    if-eqz v10, :cond_24

    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v7

    check-cast v7, Lcom/fsck/k9/mail/Multipart;

    const/4 v4, 0x0

    invoke-virtual {v7}, Lcom/fsck/k9/mail/Multipart;->getCount()I

    move-result v2

    :goto_13
    if-ge v4, v2, :cond_24

    invoke-virtual {v7, v4}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/BodyPart;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/fsck/k9/mail/internet/MimeUtility;->findPartByContentId(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;

    move-result-object v8

    if-eqz v8, :cond_21

    move-object v10, v8

    :goto_20
    return-object v10

    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_24
    const-string v10, "Content-ID"

    invoke-interface {p0, v10}, Lcom/fsck/k9/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3e

    move-object v0, v3

    array-length v6, v0

    const/4 v5, 0x0

    :goto_2f
    if-ge v5, v6, :cond_3e

    aget-object v9, v0, v5

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3b

    move-object v10, p0

    goto :goto_20

    :cond_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    :cond_3e
    const/4 v10, 0x0

    goto :goto_20
.end method

.method public static foldAndEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    return-object p0
.end method

.method public static getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v10, "\""

    if-nez p0, :cond_8

    move-object v6, v9

    :goto_7
    return-object v6

    :cond_8
    const-string v6, "\r|\n"

    const-string v7, ""

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v6, ";"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-nez p1, :cond_1c

    const/4 v6, 0x0

    aget-object v6, v5, v6

    goto :goto_7

    :cond_1c
    move-object v0, v5

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1f
    if-ge v1, v2, :cond_61

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5e

    const-string v6, "="

    const/4 v7, 0x2

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v6, "\""

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5c

    const-string v6, "\""

    invoke-virtual {v3, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_5c
    move-object v6, v3

    goto :goto_7

    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_61
    move-object v6, v9

    goto :goto_7
.end method

.method public static getMimeTypeByExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/16 v7, 0x2e

    if-eqz p0, :cond_31

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_31

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/fsck/k9/mail/internet/MimeUtility;->MIME_TYPE_BY_EXTENSION_MAP:[[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v4, :cond_31

    aget-object v1, v0, v3

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    const/4 v5, 0x1

    aget-object v5, v1, v5

    :goto_2d
    return-object v5

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_31
    const-string v5, "application/octet-stream"

    goto :goto_2d
.end method

.method public static getTextFromPart(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;
    .registers 13

    if-eqz p0, :cond_66

    :try_start_2
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v8

    if-eqz v8, :cond_66

    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    instance-of v8, v0, Lcom/fsck/k9/mail/internet/TextBody;

    if-eqz v8, :cond_17

    check-cast v0, Lcom/fsck/k9/mail/internet/TextBody;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/TextBody;->getText()Ljava/lang/String;

    move-result-object v8

    :goto_16
    return-object v8

    :cond_17
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v8

    invoke-interface {v8}, Lcom/fsck/k9/mail/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_66

    const-string v8, "text/*"

    invoke-static {v6, v8}, Lcom/fsck/k9/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_66

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v4, v7}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "charset"

    invoke-static {v8, v9}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_53

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    :cond_53
    if-eqz v2, :cond_68

    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    array-length v10, v1

    invoke-direct {v8, v1, v9, v10, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5c} :catch_5d

    goto :goto_16

    :catch_5d
    move-exception v8

    move-object v3, v8

    const-string v8, "k9"

    const-string v9, "Unable to getTextFromPart"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_66
    const/4 v8, 0x0

    goto :goto_16

    :cond_68
    :try_start_68
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    array-length v10, v1

    const-string v11, "ASCII"

    invoke-direct {v8, v1, v9, v10, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_71} :catch_5d

    goto :goto_16
.end method

.method public static mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const-string v1, "\\*"

    const-string v2, "\\.\\*"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 7

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_12

    aget-object v3, v0, v1

    invoke-static {p0, v3}, Lcom/fsck/k9/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    :goto_e
    return v4

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_12
    const/4 v4, 0x0

    goto :goto_e
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "\r|\n"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mail/internet/MimeUtility;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
