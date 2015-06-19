.class public Lcom/pinguo/camera360/gallery/temps/SandBox;
.super Ljava/lang/Object;
.source "SandBox.java"
.field public static final SAND_B0X_ROOT:Ljava/lang/String; = null
.field public static final SHOOT_MODE_BRUST:I = -0xb
.field public static final SHOOT_MODE_PANORAMA:I = -0x14
.field public static final SHOOT_MODE_SYSTEM:I = -0x6f
.field public static final SUFFIX_JPG:Ljava/lang/String; = ".jpg"
.field public static final TAG:Ljava/lang/String; = null
.field public static final emC360AddEffect:I = 0x15
.field public static final emCamModeBurst:I = -0xb
.field public static final emCamModeCaptureInVideo:I = 0xd
.field public static final emCamModeColorShift:I = 0x4
.field public static final emCamModeEffect:I = 0x0
.field public static final emCamModeFunny:I = 0x2
.field public static final emCamModeGhost:I = 0x3
.field public static final emCamModeMultiGrid:I = 0x8
.field public static final emCamModePanorama:I = -0x14
.field public static final emCamModeQR:I = 0xc
.field public static final emCamModeScene:I = 0x1
.field public static final emCamModeSelfShoot:I = 0x6
.field public static final emCamModeSnapSwitch:I = 0x9
.field public static final emCamModeTiltShift:I = 0x5
.field public static final emCamModeVideoPreview:I = 0xe
.field public static final emCamModeZeroShoot:I = 0x7
.field public static final emCamModelIdPhoto:I = 0xf
.field public static final emCamModelSony:I = 0x10
.field public static final emPuzzleFree:I = 0x2c
.field public static final emPuzzleLandscape:I = 0x2b
.field public static final emPuzzleTempalte:I = 0x29
.field public static final emPuzzleVertical:I = 0x2a
.field public static final emSystemAddEffect:I = 0x16
.field public static final emSystemChangeEffect:I = 0x17
.field public static final emSystemEdit:I = 0x18
.method static constructor <clinit>()V
.registers 2
const-class v0, Lcom/pinguo/camera360/gallery/temps/SandBox;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/gallery/temps/SandBox;->TAG:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
sget-object v1, Lcom/pinguo/lib/util/FileTool;->SAND_BOX:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/gallery/temps/SandBox;->SAND_B0X_ROOT:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static doPathFilte(Ljava/lang/String;)Ljava/lang/String;
.registers 3
const-string/jumbo v0, " "
const-string/jumbo v1, "-"
invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static formatDate(J)Ljava/lang/String;
.registers 7
new-instance v2, Ljava/text/SimpleDateFormat;
const-string/jumbo v3, "yyyy-MM-dd HH-mm-ss-SSS"
sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
new-instance v1, Ljava/util/Date;
invoke-direct {v1}, Ljava/util/Date;-><init>()V
invoke-virtual {v1, p0, p1}, Ljava/util/Date;->setTime(J)V
invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getMp3Path(J)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
sget-object v1, Lcom/pinguo/camera360/gallery/temps/SandBox;->SAND_B0X_ROOT:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
const-string/jumbo v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
const-string/jumbo v2, "sound.mp3"
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public static getOrgPhotoPath(JLjava/lang/String;)Ljava/lang/String;
.registers 7
:try_start_0
invoke-static {p0, p1}, Lcom/pinguo/camera360/gallery/temps/SandBox;->formatDate(J)Ljava/lang/String;
move-result-object v0
new-instance v2, Ljava/lang/StringBuilder;
new-instance v3, Ljava/io/File;
invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "C360_"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "_org.jpg"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/pinguo/camera360/gallery/temps/SandBox;->doPathFilte(Ljava/lang/String;)Ljava/lang/String;
:try_end_35
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_37
move-result-object v2
:goto_36
return-object v2
:catch_37
move-exception v1
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
const/4 v2, 0x0
goto :goto_36
.end method
.method public static getOrgPhotoPath(Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;)Ljava/lang/String;
.registers 4
invoke-virtual {p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getDateTaken()J
move-result-wide v0
invoke-virtual {p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getDestPath()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/gallery/temps/SandBox;->getOrgPhotoPath(JLjava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getPcmPath(J)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
sget-object v1, Lcom/pinguo/camera360/gallery/temps/SandBox;->SAND_B0X_ROOT:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
const-string/jumbo v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
const-string/jumbo v2, "sound.pcm"
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public static getSandBoxDir(J)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
sget-object v1, Lcom/pinguo/camera360/gallery/temps/SandBox;->SAND_B0X_ROOT:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
const-string/jumbo v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public static getSandBoxPath(Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;J)Ljava/lang/String;
.registers 7
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
sget-object v1, Lcom/pinguo/camera360/gallery/temps/SandBox;->SAND_B0X_ROOT:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
const-string/jumbo v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;->toString()Ljava/lang/String;
move-result-object v2
sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
const-string/jumbo v2, ".jpg"
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method