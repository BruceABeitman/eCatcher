.class public Lco/vine/android/client/TwitterVineApp;
.super Ljava/lang/Object;
.source "TwitterVineApp.java"
.field public static final API_KEY:Ljava/lang/String;
.field public static final API_SECRET:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Lco/vine/android/client/TwitterVineApp;->transform1()Ljava/lang/String;
move-result-object v0
sput-object v0, Lco/vine/android/client/TwitterVineApp;->API_KEY:Ljava/lang/String;
invoke-static {}, Lco/vine/android/client/TwitterVineApp;->transform2()Ljava/lang/String;
move-result-object v0
sput-object v0, Lco/vine/android/client/TwitterVineApp;->API_SECRET:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static transform1()Ljava/lang/String;
.registers 8
sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v7, 0xa
if-ge v6, v7, :cond_9
const-string v6, ""
:goto_8
return-object v6
:cond_9
const/16 v6, 0x15
new-array v4, v6, [B
fill-array-data v4, :array_2c
new-instance v5, Ljava/lang/StringBuilder;
array-length v6, v4
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V
move-object v0, v4
array-length v3, v0
const/4 v2, 0x0
:goto_19
if-ge v2, v3, :cond_26
aget-byte v1, v0, v2
rsub-int/lit8 v6, v1, 0x15
int-to-char v6, v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v2, v2, 0x1
goto :goto_19
:cond_26
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
goto :goto_8
nop
:array_2c
.array-data 0x1
0xb1t
0xbet
0xbet
0xdft
0xbft
0xddt
0xact
0xa2t
0x9ft
0xc2t
0xcet
0xc3t
0xc9t
0xe1t
0xa4t
0xb3t
0xd0t
0xa9t
0xa3t
0xcet
0x9et
.end array-data
.end method
.method public static transform2()Ljava/lang/String;
.registers 8
sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v7, 0xa
if-ge v6, v7, :cond_9
const-string v6, ""
:goto_8
return-object v6
:cond_9
const/16 v6, 0x2a
new-array v4, v6, [B
fill-array-data v4, :array_2c
new-instance v5, Ljava/lang/StringBuilder;
array-length v6, v4
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V
move-object v0, v4
array-length v3, v0
const/4 v2, 0x0
:goto_19
if-ge v2, v3, :cond_26
aget-byte v1, v0, v2
rsub-int/lit8 v6, v1, 0x15
int-to-char v6, v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v2, v2, 0x1
goto :goto_19
:cond_26
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
goto :goto_8
nop
:array_2c
.array-data 0x1
0xe0t
0xcat
0xbft
0xdet
0xe3t
0xe1t
0xe5t
0xdft
0xd0t
0xcet
0xc1t
0xc2t
0xb0t
0xc8t
0xa2t
0xcct
0xa7t
0xa5t
0xcbt
0xe3t
0xaet
0xcdt
0xd1t
0xd4t
0xc9t
0xe2t
0xcet
0xact
0xcdt
0xact
0xcct
0xc4t
0xe1t
0xa7t
0xb0t
0xb3t
0xd3t
0xabt
0x9ft
0xb4t
0x9bt
0xa2t
.end array-data
.end method