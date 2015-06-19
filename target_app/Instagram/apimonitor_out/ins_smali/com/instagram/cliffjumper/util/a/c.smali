.class public final Lcom/instagram/cliffjumper/util/a/c;
.super Ljava/lang/Object;
.source "PhotoEditFeatureTierUtil.java"
.field private static final a:Z
.field private static final b:Lcom/instagram/cliffjumper/util/a/d;
.method static constructor <clinit>()V
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-ge v0, v1, :cond_14
const/4 v0, 0x1
:goto_7
sput-boolean v0, Lcom/instagram/cliffjumper/util/a/c;->a:Z
invoke-static {}, Lcom/instagram/cliffjumper/util/a/a;->a()Z
move-result v0
if-eqz v0, :cond_16
sget-object v0, Lcom/instagram/cliffjumper/util/a/d;->c:Lcom/instagram/cliffjumper/util/a/d;
:goto_11
sput-object v0, Lcom/instagram/cliffjumper/util/a/c;->b:Lcom/instagram/cliffjumper/util/a/d;
return-void
:cond_14
const/4 v0, 0x0
goto :goto_7
:cond_16
sget-boolean v0, Lcom/instagram/cliffjumper/util/a/c;->a:Z
if-nez v0, :cond_20
invoke-static {}, Lcom/instagram/cliffjumper/util/a/a;->b()Z
move-result v0
if-eqz v0, :cond_23
:cond_20
sget-object v0, Lcom/instagram/cliffjumper/util/a/d;->b:Lcom/instagram/cliffjumper/util/a/d;
goto :goto_11
:cond_23
sget-object v0, Lcom/instagram/cliffjumper/util/a/d;->a:Lcom/instagram/cliffjumper/util/a/d;
goto :goto_11
.end method
.method public static a()Lcom/instagram/cliffjumper/util/a/d;
.registers 1
sget-object v0, Lcom/instagram/cliffjumper/util/a/c;->b:Lcom/instagram/cliffjumper/util/a/d;
return-object v0
.end method