.class public final Lcom/flurry/sdk/en;
.super Lcom/flurry/sdk/ep;
.source "SourceFile"
.field private final a:I
.method public constructor <init>(Ljava/lang/String;I)V
.registers 4
invoke-static {p1, p2}, Lcom/flurry/sdk/en;->a(Ljava/lang/String;I)Lcom/flurry/sdk/eq;
move-result-object v0
invoke-direct {p0, v0}, Lcom/flurry/sdk/ep;-><init>(Lcom/flurry/sdk/eq;)V
iput p2, p0, Lcom/flurry/sdk/en;->a:I
return-void
.end method
.method private static a(Ljava/lang/String;I)Lcom/flurry/sdk/eq;
.registers 4
const/4 v0, 0x0
invoke-static {p0, p1}, Lcom/flurry/sdk/en;->b(Ljava/lang/String;I)Z
move-result v1
if-eqz v1, :cond_b
invoke-static {p0}, Lcom/flurry/sdk/eo;->a(Ljava/lang/String;)Lcom/flurry/sdk/eq;
move-result-object v0
:cond_b
return-object v0
.end method
.method private static b(Ljava/lang/String;I)Z
.registers 3
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_c
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
if-lt v0, p1, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method