.class public final Lcom/spotify/android/paste/graphics/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:[I
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x2
new-array v0, v0, [I
const/4 v1, 0x0
const v2, 0x1010034
aput v2, v0, v1
const/4 v1, 0x1
sget v2, Lcom/spotify/android/paste/b;->E:I
aput v2, v0, v1
sput-object v0, Lcom/spotify/android/paste/graphics/a;->a:[I
return-void
.end method
.method public static a(Landroid/content/Context;Landroid/widget/TextView;I)V
.registers 5
const/4 v1, 0x0
sget-object v0, Lcom/spotify/android/paste/e;->z:[I
invoke-virtual {p0, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
move-result-object v0
invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v1
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
invoke-static {p1, v1}, Lcom/spotify/android/paste/graphics/a;->a(Landroid/widget/TextView;Z)V
return-void
.end method
.method public static declared-synchronized a(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;I)V
.registers 9
const/4 v0, 0x0
const-class v1, Lcom/spotify/android/paste/graphics/a;
monitor-enter v1
:try_start_4
sget-object v2, Lcom/spotify/android/paste/graphics/a;->a:[I
const/4 v3, 0x0
invoke-virtual {p0, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v2
const/4 v3, 0x0
const/4 v4, -0x1
invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v3
if-ltz v3, :cond_22
sget-object v0, Lcom/spotify/android/paste/e;->z:[I
invoke-virtual {p0, v3, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
move-result-object v3
const/4 v0, 0x0
const/4 v4, 0x0
invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v0
invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
:cond_22
const/4 v3, 0x1
invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v0
invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
invoke-static {p1, v0}, Lcom/spotify/android/paste/graphics/a;->a(Landroid/widget/TextView;Z)V
:try_end_2d
.catchall {:try_start_4 .. :try_end_2d} :catchall_2f
monitor-exit v1
return-void
:catchall_2f
move-exception v0
monitor-exit v1
throw v0
.end method
.method private static a(Landroid/widget/TextView;Z)V
.registers 4
if-eqz p1, :cond_f
new-instance v0, Lcom/spotify/android/paste/graphics/b;
invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/android/paste/graphics/b;-><init>(Landroid/content/Context;)V
invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V
:cond_e
:goto_e
return-void
:cond_f
invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;
move-result-object v0
instance-of v0, v0, Lcom/spotify/android/paste/graphics/b;
if-eqz v0, :cond_e
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V
goto :goto_e
.end method