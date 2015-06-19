.class public Lcom/instagram/cliffjumper/util/a/e;
.super Ljava/lang/Object;
.source "ProcessorInfoUtil.java"
.field private static final a:Ljava/lang/Class;
.field private b:I
.field private c:I
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/instagram/cliffjumper/util/a/e;
sput-object v0, Lcom/instagram/cliffjumper/util/a/e;->a:Ljava/lang/Class;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private b()I
.registers 7
const/4 v0, 0x0
const/4 v5, -0x1
iget v1, p0, Lcom/instagram/cliffjumper/util/a/e;->b:I
if-nez v1, :cond_2f
move v1, v0
:goto_7
const/16 v2, 0x20
if-ge v0, v2, :cond_2a
:try_start_b
new-instance v2, Ljava/io/File;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "/sys/devices/system/cpu/cpu"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v2
if-eqz v2, :cond_2a
add-int/lit8 v1, v1, 0x1
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_2a
if-nez v1, :cond_32
const/4 v0, -0x1
iput v0, p0, Lcom/instagram/cliffjumper/util/a/e;->b:I
:cond_2f
:try_end_2f
.catch Ljava/lang/Exception; {:try_start_b .. :try_end_2f} :catch_35
:goto_2f
iget v0, p0, Lcom/instagram/cliffjumper/util/a/e;->b:I
return v0
:cond_32
:try_start_32
iput v1, p0, Lcom/instagram/cliffjumper/util/a/e;->b:I
:try_end_34
.catch Ljava/lang/Exception; {:try_start_32 .. :try_end_34} :catch_35
goto :goto_2f
:catch_35
move-exception v0
sget-object v0, Lcom/instagram/cliffjumper/util/a/e;->a:Ljava/lang/Class;
iput v5, p0, Lcom/instagram/cliffjumper/util/a/e;->b:I
goto :goto_2f
.end method
.method private c()I
.registers 3
iget v0, p0, Lcom/instagram/cliffjumper/util/a/e;->c:I
if-nez v0, :cond_13
invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I
move-result v0
const/4 v1, 0x1
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v0
iput v0, p0, Lcom/instagram/cliffjumper/util/a/e;->c:I
:cond_13
iget v0, p0, Lcom/instagram/cliffjumper/util/a/e;->c:I
return v0
.end method
.method public final a()I
.registers 3
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xa
if-gt v0, v1, :cond_8
const/4 v0, 0x1
:cond_7
:goto_7
return v0
:cond_8
invoke-direct {p0}, Lcom/instagram/cliffjumper/util/a/e;->b()I
move-result v0
const/4 v1, -0x1
if-ne v0, v1, :cond_7
invoke-direct {p0}, Lcom/instagram/cliffjumper/util/a/e;->c()I
move-result v0
goto :goto_7
.end method