.class public final Lcom/instagram/cliffjumper/util/a/b;
.super Ljava/lang/Object;
.source "FeatureUtil.java"
.field private static final a:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/instagram/cliffjumper/util/a/e;
invoke-direct {v0}, Lcom/instagram/cliffjumper/util/a/e;-><init>()V
invoke-virtual {v0}, Lcom/instagram/cliffjumper/util/a/e;->a()I
move-result v0
sput v0, Lcom/instagram/cliffjumper/util/a/b;->a:I
return-void
.end method
.method public static a()Z
.registers 2
sget v0, Lcom/instagram/cliffjumper/util/a/b;->a:I
const/4 v1, 0x2
if-lt v0, v1, :cond_d
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x10
if-lt v0, v1, :cond_d
const/4 v0, 0x1
:goto_c
return v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method