.class public final Landroid/support/v7/internal/view/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Landroid/content/Context;
.method private constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v7/internal/view/a;->a:Landroid/content/Context;
return-void
.end method
.method public static a(Landroid/content/Context;)Landroid/support/v7/internal/view/a;
.registers 2
new-instance v0, Landroid/support/v7/internal/view/a;
invoke-direct {v0, p0}, Landroid/support/v7/internal/view/a;-><init>(Landroid/content/Context;)V
return-object v0
.end method
.method public final a()I
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/a;->a:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Landroid/support/v7/a/g;->a:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I
move-result v0
return v0
.end method
.method public final b()I
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/a;->a:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I
div-int/lit8 v0, v0, 0x2
return v0
.end method
.method public final c()Z
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/a;->a:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Landroid/support/v7/a/d;->a:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z
move-result v0
return v0
.end method
.method public final d()I
.registers 6
const/4 v4, 0x0
iget-object v0, p0, Landroid/support/v7/internal/view/a;->a:Landroid/content/Context;
const/4 v1, 0x0
sget-object v2, Landroid/support/v7/a/k;->a:[I
sget v3, Landroid/support/v7/a/c;->b:I
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v1
invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I
move-result v0
iget-object v2, p0, Landroid/support/v7/internal/view/a;->a:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {p0}, Landroid/support/v7/internal/view/a;->c()Z
move-result v3
if-nez v3, :cond_26
sget v3, Landroid/support/v7/a/e;->a:I
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I
move-result v0
:cond_26
invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
return v0
.end method
.method public final e()Z
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/a;->a:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
move-result-object v0
iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
const/16 v1, 0xe
if-ge v0, v1, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public final f()I
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/a;->a:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Landroid/support/v7/a/e;->b:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
return v0
.end method