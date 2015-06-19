.class public final Lcom/lenovo/anyshare/sdk/internal/ax;
.super Ljava/lang/Object;
.source "PackageClassifier.java"
.field private static a:[I
.field private static b:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x0
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/ax;->a:[I
const/16 v0, 0x21
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string/jumbo v2, "com.android.browser"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string/jumbo v2, "com.android.calculator"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string/jumbo v2, "com.android.calculator2"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string/jumbo v2, "com.android.calendar"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string/jumbo v2, "com.android.contacts"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string/jumbo v2, "com.android.email"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string/jumbo v2, "com.android.gallery3d"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string/jumbo v2, "com.android.mms"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string/jumbo v2, "com.android.music"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string/jumbo v2, "com.android.settings"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string/jumbo v2, "com.android.soundrecorder"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string/jumbo v2, "com.android.videoeditor"
aput-object v2, v0, v1
const/16 v1, 0xc
const-string/jumbo v2, "com.android.quicksearchbox"
aput-object v2, v0, v1
const/16 v1, 0xd
const-string/jumbo v2, "com.android.task"
aput-object v2, v0, v1
const/16 v1, 0xe
const-string/jumbo v2, "com.android.stk"
aput-object v2, v0, v1
const/16 v1, 0xf
const-string/jumbo v2, "com.android.camera"
aput-object v2, v0, v1
const/16 v1, 0x10
const-string/jumbo v2, "com.android.deskclock"
aput-object v2, v0, v1
const/16 v1, 0x11
const-string/jumbo v2, "com.android.development"
aput-object v2, v0, v1
const/16 v1, 0x12
const-string/jumbo v2, "com.cooliris.media"
aput-object v2, v0, v1
const/16 v1, 0x13
const-string/jumbo v2, "com.mediatek.FMRadio"
aput-object v2, v0, v1
const/16 v1, 0x14
const-string/jumbo v2, "com.mediatek.bluetooth"
aput-object v2, v0, v1
const/16 v1, 0x15
const-string/jumbo v2, "com.mtk.telephony"
aput-object v2, v0, v1
const/16 v1, 0x16
const-string/jumbo v2, "com.lenovo.fm"
aput-object v2, v0, v1
const/16 v1, 0x17
const-string/jumbo v2, "com.mediatek.StkSelection"
aput-object v2, v0, v1
const/16 v1, 0x18
const-string/jumbo v2, "com.lenovo.email"
aput-object v2, v0, v1
const/16 v1, 0x19
const-string/jumbo v2, "com.lenovo.music"
aput-object v2, v0, v1
const/16 v1, 0x1a
const-string/jumbo v2, "com.lenovo.videoplayer"
aput-object v2, v0, v1
const/16 v1, 0x1b
const-string/jumbo v2, "com.lenovo.app.Calendar"
aput-object v2, v0, v1
const/16 v1, 0x1c
const-string/jumbo v2, "com.lenovo.ideafriend"
aput-object v2, v0, v1
const/16 v1, 0x1d
const-string/jumbo v2, "com.lenovo.wo3g"
aput-object v2, v0, v1
const/16 v1, 0x1e
const-string/jumbo v2, "com.mediatek.wo3g"
aput-object v2, v0, v1
const/16 v1, 0x1f
const-string/jumbo v2, "com.lenovo.android.settings.tether"
aput-object v2, v0, v1
const/16 v1, 0x20
const-string/jumbo v2, "com.lenovomobile.deskclock"
aput-object v2, v0, v1
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/ax;->b:[Ljava/lang/String;
return-void
.end method
.method public static a(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/ax$a;
.registers 7
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/ax;->b:[Ljava/lang/String;
array-length v2, v0
const/4 v1, 0x0
:goto_4
if-ge v1, v2, :cond_14
aget-object v3, v0, v1
invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_11
sget-object v4, Lcom/lenovo/anyshare/sdk/internal/ax$a;->b:Lcom/lenovo/anyshare/sdk/internal/ax$a;
:goto_10
return-object v4
:cond_11
add-int/lit8 v1, v1, 0x1
goto :goto_4
:cond_14
sget-object v4, Lcom/lenovo/anyshare/sdk/internal/ax;->a:[I
if-eqz v4, :cond_24
sget-object v4, Lcom/lenovo/anyshare/sdk/internal/ax;->a:[I
invoke-virtual {p0}, Ljava/lang/String;->hashCode()I
move-result v5
invoke-static {v4, v5}, Lcom/lenovo/anyshare/sdk/internal/ag;->a([II)I
move-result v4
if-gez v4, :cond_27
:cond_24
sget-object v4, Lcom/lenovo/anyshare/sdk/internal/ax$a;->c:Lcom/lenovo/anyshare/sdk/internal/ax$a;
goto :goto_10
:cond_27
sget-object v4, Lcom/lenovo/anyshare/sdk/internal/ax$a;->a:Lcom/lenovo/anyshare/sdk/internal/ax$a;
goto :goto_10
.end method