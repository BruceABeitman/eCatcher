.class public Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;
.super Lcom/pinguo/camera360/cloud/struct/RequestConsole;
.source "ImageRequestConsole.java"


# static fields
.field private static final ACTION_NAME:Ljava/lang/String; = "action"

.field private static final FILE_NAME:Ljava/lang/String; = "file"

.field private static final PARAMS_NAME:Ljava/lang/String; = "params"

.field private static final TAG:Ljava/lang/String; = "ImageRequestConsole"

.field private static final sdfRealyTime:Ljava/text/SimpleDateFormat;

.field private static final sdfTime:Ljava/text/SimpleDateFormat;

.field private static final time_by_regex:Ljava/util/regex/Pattern;


# instance fields
.field private mAction:Lcom/pinguo/camera360/cloud/struct/PostStruct;

.field private mFile:Lcom/pinguo/camera360/cloud/struct/PostStruct;

.field private mParams:Lcom/pinguo/camera360/cloud/struct/PostStruct;

.field private mUploadController:Lcom/pinguo/camera360/cloud/controller/UploadController;

.field private mUploadSize:D

.field private nHeight:I

.field private nWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string/jumbo v0, "^(\\d{4}).(\\d{2}).(\\d{2}).(\\d{2}).(\\d{2}).(\\d{2})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->time_by_regex:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->sdfTime:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->sdfRealyTime:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JLandroid/content/Context;)V
    .registers 35

    const/4 v3, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v3, v1, v2}, Lcom/pinguo/camera360/cloud/struct/RequestConsole;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const-wide v3, 0x417312d000000000L

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->mUploadSize:D

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->mAction:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->mParams:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->mFile:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->nWidth:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->nHeight:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->mUploadController:Lcom/pinguo/camera360/cloud/controller/UploadController;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->nPackageType:I

    new-instance v3, Lcom/pinguo/camera360/cloud/struct/PostStruct;

    const-string/jumbo v4, "text"

    const-string/jumbo v5, "action"

    const-string/jumbo v6, ""

    invoke-direct {v3, v4, v5, v6}, Lcom/pinguo/camera360/cloud/struct/PostStruct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->mAction:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    new-instance v3, Lcom/pinguo/camera360/cloud/struct/PostStruct;

    const-string/jumbo v4, "text"

    const-string/jumbo v5, "params"

    const-string/jumbo v6, ""

    invoke-direct {v3, v4, v5, v6}, Lcom/pinguo/camera360/cloud/struct/PostStruct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->mParams:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    new-instance v3, Lcom/pinguo/camera360/cloud/struct/PostStruct;

    const-string/jumbo v4, "binary"

    const-string/jumbo v5, "file"

    const-string/jumbo v6, ""

    invoke-direct {v3, v4, v5, v6}, Lcom/pinguo/camera360/cloud/struct/PostStruct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->mFile:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->mAction:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->mParams:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->mFile:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    aput-object v5, v3, v4

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move-wide/from16 v11, p10

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-wide/from16 v15, p14

    move-object/from16 v17, p16

    invoke-direct/range {v3 .. v17}, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->setUpdateImageFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JLandroid/content/Context;)Z

    return-void
.end method

.method private setUpdateImageFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JLandroid/content/Context;)Z
    .registers 69
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ParserError",
            "ParserError"
        }
    .end annotation

    const-string/jumbo v50, "ImageRequestConsole"

    new-instance v51, Ljava/lang/StringBuilder;

    const-string/jumbo v52, "@@@@@@@@@@@@@@@@pic_token="

    invoke-direct/range {v51 .. v52}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v51

    move-wide/from16 v1, p12

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string/jumbo v52, "type="

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->mFile:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->setValue(Ljava/lang/String;)V

    new-instance v25, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v50, 0x1

    move/from16 v0, v50

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const-string/jumbo v50, "PictureSize"

    new-instance v51, Ljava/lang/StringBuilder;

    const-string/jumbo v52, "Upload Image: "

    invoke-direct/range {v51 .. v52}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v52, v0

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string/jumbo v52, " * "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v52, v0

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v50, v0

    const/16 v51, -0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-eq v0, v1, :cond_93

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v50, v0

    const/16 v51, -0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_a1

    :cond_93
    const/16 v50, 0x0

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->bEnable:Z

    invoke-static/range {p8 .. p9}, Lorg/pinguo/cloudshare/support/FileSupport;->insertExistsExclude(J)V

    const/16 v50, 0x0

    :goto_a0
    return v50

    :cond_a1
    move-wide/from16 v12, p8

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v23, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v24, v0

    new-instance v9, Lorg/pinguo/cloudshare/support/ExifInformation;

    invoke-direct {v9}, Lorg/pinguo/cloudshare/support/ExifInformation;-><init>()V

    const/16 v50, 0x0

    move/from16 v0, v50

    move-object/from16 v1, p3

    invoke-virtual {v9, v0, v1}, Lorg/pinguo/cloudshare/support/ExifInformation;->loadAttributes(ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v10

    const/16 v50, 0x1

    move/from16 v0, v50

    move-object/from16 v1, p3

    invoke-virtual {v9, v0, v1}, Lorg/pinguo/cloudshare/support/ExifInformation;->loadAttributes(ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const/16 v50, 0x2

    move/from16 v0, v50

    move-object/from16 v1, p3

    invoke-virtual {v9, v0, v1}, Lorg/pinguo/cloudshare/support/ExifInformation;->loadAttributes(ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const/16 v50, 0x3

    move/from16 v0, v50

    move-object/from16 v1, p3

    invoke-virtual {v9, v0, v1}, Lorg/pinguo/cloudshare/support/ExifInformation;->loadAttributes(ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string/jumbo v50, "GPSLatitude"

    move-object/from16 v0, v50

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_fb

    const-string/jumbo v6, "0"

    :cond_fb
    const-string/jumbo v50, "GPSLongitude"

    move-object/from16 v0, v50

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_10b

    const-string/jumbo v7, "0"

    :cond_10b
    new-instance v18, Ljava/util/Date;

    const-wide/16 v50, 0x3e8

    mul-long v50, v50, p12

    move-object/from16 v0, v18

    move-wide/from16 v1, v50

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sget-object v50, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->sdfRealyTime:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v50

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_121} :catch_446

    move-result-object v41

    const/16 v20, 0x1

    :try_start_124
    const-string/jumbo v50, "Orientation"

    move-object/from16 v0, v50

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/String;

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Integer;->intValue()I
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_136} :catch_19a
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_136} :catch_446

    move-result v20

    :goto_137
    if-nez v41, :cond_17b

    :try_start_139
    const-string/jumbo v50, "/"

    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v21

    const/16 v50, -0x1

    move/from16 v0, v21

    move/from16 v1, v50

    if-eq v0, v1, :cond_17b

    add-int/lit8 v50, v21, 0x6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v51

    move-object/from16 v0, p3

    move/from16 v1, v50

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v44

    const-string/jumbo v50, "."

    move-object/from16 v0, v44

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v22

    const/16 v50, -0x1

    move/from16 v0, v22

    move/from16 v1, v50

    if-eq v0, v1, :cond_17b

    const/16 v50, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v50

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v41

    :cond_17b
    sget-object v50, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->time_by_regex:Ljava/util/regex/Pattern;

    move-object/from16 v0, v50

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->find()Z

    move-result v50

    if-nez v50, :cond_19e

    const/16 v50, 0x0

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->bEnable:Z

    invoke-static/range {p8 .. p9}, Lorg/pinguo/cloudshare/support/FileSupport;->insertExistsExclude(J)V

    const/16 v50, 0x0

    goto/16 :goto_a0

    :catch_19a
    move-exception v8

    const/16 v20, 0x1

    goto :goto_137

    :cond_19e
    const/16 v50, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v48

    const/16 v50, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v38

    const/16 v50, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v32

    const/16 v50, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v34

    const/16 v50, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v37

    const/16 v50, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v43

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v51

    invoke-direct/range {v50 .. v51}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v51, ":"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, ":"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, " "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, ":"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, ":"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v51

    invoke-direct/range {v50 .. v51}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v51, "-"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, "-"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, " "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, ":"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, ":"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    const/16 v50, 0x6

    move/from16 v0, v20

    move/from16 v1, v50

    if-eq v0, v1, :cond_29a

    const/16 v50, 0x8

    move/from16 v0, v20

    move/from16 v1, v50

    if-ne v0, v1, :cond_438

    :cond_29a
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->nWidth:I

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->nHeight:I

    :goto_2a6
    mul-int v26, v23, v24

    invoke-static/range {p14 .. p14}, Lorg/pinguo/cloudshare/support/HelperConsole;->getUploadPicSize(Landroid/content/Context;)I

    move-result v50

    move/from16 v0, v50

    int-to-double v0, v0

    move-wide/from16 v50, v0

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->mUploadSize:D

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v50, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->mUploadSize:D

    move-wide/from16 v52, v0

    cmpl-double v50, v50, v52

    if-lez v50, :cond_50f

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->mUploadSize:D

    move-wide/from16 v50, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v52, v0

    div-double v50, v50, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->nWidth:I

    move/from16 v50, v0

    move/from16 v0, v50

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v29

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->round(D)J

    move-result-wide v50

    move-wide/from16 v0, v50

    long-to-int v0, v0

    move/from16 v50, v0

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->nWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->nHeight:I

    move/from16 v50, v0

    move/from16 v0, v50

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v29

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->round(D)J

    move-result-wide v50

    move-wide/from16 v0, v50

    long-to-int v0, v0

    move/from16 v50, v0

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->nHeight:I

    const-string/jumbo v50, "scalePictureSize"

    new-instance v51, Ljava/lang/StringBuilder;

    const-string/jumbo v52, "Upload Image: "

    invoke-direct/range {v51 .. v52}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->nWidth:I

    move/from16 v52, v0

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string/jumbo v52, " * "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->nHeight:I

    move/from16 v52, v0

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v50, "/"

    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v50

    add-int/lit8 v50, v50, 0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v51

    move-object/from16 v0, p3

    move/from16 v1, v50

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v40

    new-instance v50, Ljava/lang/StringBuilder;

    sget-object v51, Lorg/pinguo/cloudshare/support/Config;->TEMP_PICTURE_PATH:Ljava/lang/String;

    invoke-static/range {v51 .. v51}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v51

    invoke-direct/range {v50 .. v51}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v51, "/tmp_"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v51

    invoke-virtual/range {v50 .. v52}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, "_"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->setDstName(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v50, 0x6

    move/from16 v0, v20

    move/from16 v1, v50

    if-eq v0, v1, :cond_39c

    const/16 v50, 0x8

    move/from16 v0, v20

    move/from16 v1, v50

    if-ne v0, v1, :cond_453

    :cond_39c
    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->getDstName()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->nHeight:I

    move/from16 v51, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->nWidth:I

    move/from16 v52, v0

    const/16 v53, 0x5a

    move-object/from16 v0, v50

    move/from16 v1, v51

    move/from16 v2, v52

    move-object/from16 v3, p3

    move/from16 v4, v53

    invoke-static {v0, v1, v2, v3, v4}, Lorg/pinguo/cloudshare/support/FileSupport;->zoominPicture(Ljava/lang/String;IILjava/lang/String;I)Z

    move-result v5

    const-string/jumbo v50, "ImageWidth"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->nHeight:I

    move/from16 v51, v0

    invoke-static/range {v51 .. v51}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v50, "ImageLength"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->nWidth:I

    move/from16 v51, v0

    invoke-static/range {v51 .. v51}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v50, "PixelXDimension"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->nHeight:I

    move/from16 v51, v0

    invoke-static/range {v51 .. v51}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v50, "PixelYDimension"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->nWidth:I

    move/from16 v51, v0

    invoke-static/range {v51 .. v51}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_40c
    const-string/jumbo v50, "DateTime"

    move-object/from16 v0, v50

    move-object/from16 v1, v41

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v50, "DateTimeOriginal"

    move-object/from16 v0, v50

    move-object/from16 v1, v41

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v50, "DateTimeDigitized"

    move-object/from16 v0, v50

    move-object/from16 v1, v41

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v5, :cond_4c5

    const/16 v50, 0x0

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->bEnable:Z

    const/16 v50, 0x0

    goto/16 :goto_a0

    :cond_438
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->nWidth:I

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->nHeight:I
    :try_end_444
    .catch Ljava/io/IOException; {:try_start_139 .. :try_end_444} :catch_446

    goto/16 :goto_2a6

    :catch_446
    move-exception v8

    const/16 v50, 0x0

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->bEnable:Z

    const/16 v50, 0x0

    goto/16 :goto_a0

    :cond_453
    :try_start_453
    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->getDstName()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->nWidth:I

    move/from16 v51, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->nHeight:I

    move/from16 v52, v0

    const/16 v53, 0x5a

    move-object/from16 v0, v50

    move/from16 v1, v51

    move/from16 v2, v52

    move-object/from16 v3, p3

    move/from16 v4, v53

    invoke-static {v0, v1, v2, v3, v4}, Lorg/pinguo/cloudshare/support/FileSupport;->zoominPicture(Ljava/lang/String;IILjava/lang/String;I)Z

    move-result v5

    const-string/jumbo v50, "ImageWidth"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->nWidth:I

    move/from16 v51, v0

    invoke-static/range {v51 .. v51}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v50, "ImageLength"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->nHeight:I

    move/from16 v51, v0

    invoke-static/range {v51 .. v51}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v50, "PixelXDimension"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->nWidth:I

    move/from16 v51, v0

    invoke-static/range {v51 .. v51}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v50, "PixelYDimension"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->nHeight:I

    move/from16 v51, v0

    invoke-static/range {v51 .. v51}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_40c

    :cond_4c5
    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->getDstName()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v9, v10, v0}, Lorg/pinguo/cloudshare/support/ExifInformation;->saveAttributes(Ljava/util/HashMap;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->mFile:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    move-object/from16 v50, v0

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->getDstName()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->setValue(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->getDstName()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v50 .. v50}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCRC32forFile(Ljava/lang/String;)J

    move-result-wide v12

    const-string/jumbo v50, "104"

    move-object/from16 v0, v50

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_50f

    new-instance v27, Lorg/pinguo/richpicture/RichPictureInterface;

    invoke-direct/range {v27 .. v27}, Lorg/pinguo/richpicture/RichPictureInterface;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/pinguo/richpicture/RichPictureInterface;->getAudioInfosFromFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    if-eqz v16, :cond_50f

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v50

    if-eqz v50, :cond_50f

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v50

    :goto_509
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-nez v51, :cond_55c

    :cond_50f
    new-instance v27, Lorg/pinguo/richpicture/RichPictureInterface;

    invoke-direct/range {v27 .. v27}, Lorg/pinguo/richpicture/RichPictureInterface;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->mFile:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->getValue()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v27

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/pinguo/richpicture/RichPictureInterface;->getAudioInfosFromFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    const-string/jumbo v50, "104"

    move-object/from16 v0, v50

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_57b

    if-eqz v16, :cond_56e

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v50

    if-eqz v50, :cond_56e

    const-string/jumbo v50, "SoundPicCheck"

    const-string/jumbo v51, "Sound Picture valid!"

    invoke-static/range {v50 .. v51}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->mFile:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->createData()Z

    move-result v50

    if-nez v50, :cond_59a

    const/16 v50, 0x0

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->bEnable:Z

    const/16 v50, 0x0

    goto/16 :goto_a0

    :cond_55c
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/pinguo/richpicture/AudioInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->getDstName()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    invoke-virtual {v0, v1, v11}, Lorg/pinguo/richpicture/RichPictureInterface;->setAudioInfoToFile(Ljava/lang/String;Lorg/pinguo/richpicture/AudioInfo;)Z

    goto :goto_509

    :cond_56e
    const-string/jumbo v50, "SoundPicCheck"

    const-string/jumbo v51, "Sound Picture invalid!"

    invoke-static/range {v50 .. v51}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p4, "100"

    goto :goto_544

    :cond_57b
    if-eqz v16, :cond_590

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v50

    if-eqz v50, :cond_590

    const-string/jumbo v50, "SoundPicCheck"

    const-string/jumbo v51, "Normal Picture invalid!"

    invoke-static/range {v50 .. v51}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p4, "104"

    goto :goto_544

    :cond_590
    const-string/jumbo v50, "SoundPicCheck"

    const-string/jumbo v51, "Normal Picture valid!"

    invoke-static/range {v50 .. v51}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_544

    :cond_59a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v50

    sub-long v14, v50, p5

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v47

    const/16 v50, 0x0

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->length()I

    move-result v51

    add-int/lit8 v51, v51, -0x3

    move-object/from16 v0, v47

    move/from16 v1, v50

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v45

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v50

    const-wide v52, 0x40c3880000000000L

    mul-double v50, v50, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v50

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v42

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v51

    invoke-direct/range {v50 .. v51}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v50

    move-wide/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v51

    invoke-direct/range {v50 .. v51}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v51, ":"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/String;->getBytes()[B

    move-result-object v50

    const/16 v51, 0x8

    invoke-static/range {v50 .. v51}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v33

    const/16 v50, 0x0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v51

    add-int/lit8 v51, v51, -0x1

    move-object/from16 v0, v33

    move/from16 v1, v50

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v50, "image/jpeg"

    invoke-virtual/range {v50 .. v50}, Ljava/lang/String;->getBytes()[B

    move-result-object v50

    const/16 v51, 0x8

    invoke-static/range {v50 .. v51}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v36

    const/16 v50, 0x0

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v51

    add-int/lit8 v51, v51, -0x1

    move-object/from16 v0, v36

    move/from16 v1, v50

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    new-instance v50, Ljava/lang/StringBuilder;

    const-string/jumbo v51, "/rs-put/"

    invoke-direct/range {v50 .. v51}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v50

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, "/mimeType/"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, "/crc32/"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v50, "\r"

    const-string/jumbo v51, ""

    move-object/from16 v0, v31

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v50, "\n"

    const-string/jumbo v51, ""

    move-object/from16 v0, v31

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    sget-object v50, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->sdfTime:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v50

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v46

    const-wide/16 v50, 0x0

    cmp-long v50, p8, v50

    if-nez v50, :cond_69b

    invoke-static/range {p3 .. p3}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCRC32forFile(Ljava/lang/String;)J

    move-result-wide p8

    :cond_69b
    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v50

    invoke-static/range {v50 .. v50}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;

    move-result-object v11

    const-string/jumbo v17, ""

    if-eqz v11, :cond_6b0

    iget-object v0, v11, Lcom/pinguo/camera360/login/model/User$Info;->token:Ljava/lang/String;

    move-object/from16 v17, v0

    :cond_6b0
    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v50, "client="

    move-object/from16 v0, v28

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p14 .. p14}, Lorg/pinguo/cloudshare/support/ToolUtil;->getMyVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v50 .. v50}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v28

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, "&client_sig="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    sget-object v51, Lorg/pinguo/cloudshare/support/Config;->CLIENT_SIG:Ljava/lang/String;

    invoke-static/range {v51 .. v51}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, "&os="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    sget-object v51, Lorg/pinguo/cloudshare/support/Config;->OS:Ljava/lang/String;

    invoke-static/range {v51 .. v51}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, "&key="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-static/range {v35 .. v35}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, "&file_size="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->mFile:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->getFileSize()J

    move-result-wide v51

    invoke-virtual/range {v50 .. v52}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, "&upload_cost="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-static/range {v45 .. v45}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, "&userid="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, "&width="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->nWidth:I

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, "&height="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->nHeight:I

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, "&type="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, "&content_id="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, "&latitude="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, "&longitude="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, "&photo_date_time="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-static/range {v46 .. v46}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, "&crc32="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, "&app_key="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, "5dab06e7a53740ea9b78"

    invoke-static/range {v51 .. v51}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, "&usage=usage"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, "&localkey="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, "&signature="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, "&photoDateTime="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-wide/16 v51, 0x3e8

    mul-long v51, v51, p12

    invoke-virtual/range {v50 .. v52}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    if-eqz p10, :cond_817

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v51

    invoke-direct/range {v50 .. v51}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v51, "&cameraModel="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-static/range {p10 .. p10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    :cond_817
    if-eqz p11, :cond_83b

    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->isEmpty()Z

    move-result v50

    if-nez v50, :cond_83b

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v51

    invoke-direct/range {v50 .. v51}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v51, "&effect="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-static/range {p11 .. p11}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    :cond_83b
    const-string/jumbo v50, "Upload Param"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v52, "\r\n"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->mAction:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->mAction:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->createData()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->mParams:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->mParams:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->createData()Z
    :try_end_889
    .catch Ljava/io/IOException; {:try_start_453 .. :try_end_889} :catch_446

    const/16 v50, 0x1

    goto/16 :goto_a0
.end method


# virtual methods
.method public getFileSize()J
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->mFile:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->mFile:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    invoke-virtual {v0}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->getFileSize()J

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, -0x1

    goto :goto_a
.end method

.method protected sendErrorFunction(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pinguo/camera360/cloud/exception/DisableServerException;,
            Lcom/pinguo/camera360/cloud/exception/UserInvalidException;,
            Lcom/pinguo/camera360/cloud/exception/TimeOutException;
        }
    .end annotation

    const-string/jumbo v0, "Error"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "QBox Code Error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->nHttpStatusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->nHttpStatusCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->mFile:Lcom/pinguo/camera360/cloud/struct/PostStruct;

    invoke-virtual {v2}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/cloud/controller/LogController;->writeLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->nHttpStatusCode:I

    packed-switch v0, :pswitch_data_54

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->mUploadController:Lcom/pinguo/camera360/cloud/controller/UploadController;

    invoke-virtual {v0}, Lcom/pinguo/camera360/cloud/controller/UploadController;->resetPutUrl()V

    :goto_4c
    return-void

    :pswitch_4d
    iget-object v0, p0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->mUploadController:Lcom/pinguo/camera360/cloud/controller/UploadController;

    invoke-virtual {v0}, Lcom/pinguo/camera360/cloud/controller/UploadController;->resetPutUrl()V

    goto :goto_4c

    nop

    :pswitch_data_54
    .packed-switch 0x1f6
        :pswitch_4d
    .end packed-switch
.end method

.method public setUploadController(Lcom/pinguo/camera360/cloud/controller/UploadController;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->mUploadController:Lcom/pinguo/camera360/cloud/controller/UploadController;

    return-void
.end method
