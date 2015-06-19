.class public Lcom/twidroid/fragments/e/as;
.super Ljava/lang/Object;
.source "SourceFile"
.field final a:Landroid/content/res/Configuration;
.field  b:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/content/res/Configuration;
invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V
iput-object v0, p0, Lcom/twidroid/fragments/e/as;->a:Landroid/content/res/Configuration;
return-void
.end method
.method  a(Landroid/content/res/Resources;)Z
.registers 7
const/4 v1, 0x1
const/4 v0, 0x0
iget-object v2, p0, Lcom/twidroid/fragments/e/as;->a:Landroid/content/res/Configuration;
invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
move-result v3
iget v2, p0, Lcom/twidroid/fragments/e/as;->b:I
invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v4
iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I
if-eq v2, v4, :cond_27
move v2, v1
:goto_17
if-nez v2, :cond_1d
and-int/lit16 v2, v3, 0x304
if-eqz v2, :cond_26
:cond_1d
invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I
iput v0, p0, Lcom/twidroid/fragments/e/as;->b:I
move v0, v1
:cond_26
return v0
:cond_27
move v2, v0
goto :goto_17
.end method