.class public Lcom/spotify/mobile/android/util/df;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/c/a;
.field private final a:Lcom/squareup/picasso/Picasso;
.field private final b:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 8
const/high16 v5, 0x10
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "Not called from main loop"
invoke-static {v0}, Lcom/spotify/mobile/android/util/bt;->b(Ljava/lang/String;)V
new-instance v2, Lcom/squareup/picasso/v;
invoke-direct {v2, p1}, Lcom/squareup/picasso/v;-><init>(Landroid/content/Context;)V
new-instance v3, Lcom/squareup/picasso/r;
const-string v0, "activity"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/ActivityManager;
invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I
move-result v1
invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
move-result-object v4
iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I
and-int/2addr v4, v5
if-eqz v4, :cond_4e
invoke-virtual {v0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I
move-result v0
:goto_2a
mul-int/2addr v0, v5
div-int/lit8 v0, v0, 0x7
div-int/lit8 v0, v0, 0x2
invoke-direct {v3, v0}, Lcom/squareup/picasso/r;-><init>(I)V
invoke-virtual {v2, v3}, Lcom/squareup/picasso/v;->a(Lcom/squareup/picasso/e;)Lcom/squareup/picasso/v;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/picasso/v;->a()Lcom/squareup/picasso/Picasso;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/util/df;->a:Lcom/squareup/picasso/Picasso;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/util/df;->b:Z
iget-boolean v0, p0, Lcom/spotify/mobile/android/util/df;->b:Z
if-eqz v0, :cond_4d
iget-object v0, p0, Lcom/spotify/mobile/android/util/df;->a:Lcom/squareup/picasso/Picasso;
invoke-virtual {v0}, Lcom/squareup/picasso/Picasso;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/util/df;->a:Lcom/squareup/picasso/Picasso;
invoke-virtual {v0}, Lcom/squareup/picasso/Picasso;->b()V
:cond_4d
return-void
:cond_4e
move v0, v1
goto :goto_2a
.end method
.method public static a(Landroid/widget/ImageView;)Lcom/squareup/picasso/ai;
.registers 3
invoke-static {}, Lcom/spotify/mobile/android/ui/b/a;->a()Lcom/spotify/mobile/android/util/dg;
move-result-object v0
const/4 v1, 0x0
invoke-static {p0, v0, v1}, Lcom/spotify/mobile/android/util/df;->a(Landroid/widget/ImageView;Lcom/spotify/mobile/android/util/dg;Lcom/squareup/picasso/f;)Lcom/squareup/picasso/ai;
move-result-object v0
return-object v0
.end method
.method public static a(Landroid/widget/ImageView;Lcom/spotify/mobile/android/util/dg;)Lcom/squareup/picasso/ai;
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Lcom/spotify/mobile/android/util/df;->a(Landroid/widget/ImageView;Lcom/spotify/mobile/android/util/dg;Lcom/squareup/picasso/f;)Lcom/squareup/picasso/ai;
move-result-object v0
return-object v0
.end method
.method private static a(Landroid/widget/ImageView;Lcom/spotify/mobile/android/util/dg;Lcom/squareup/picasso/f;)Lcom/squareup/picasso/ai;
.registers 6
const v2, 0x7f0a01d7
const-string v0, "ImageView must not be null!"
invoke-static {p0, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "DrawableFactory must not be bull!"
invoke-static {p1, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-class v0, Lcom/spotify/mobile/android/util/df;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/df;
iget-boolean v1, v0, Lcom/spotify/mobile/android/util/df;->b:Z
invoke-virtual {p0, v2}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/dh;
if-nez v0, :cond_27
new-instance v0, Lcom/spotify/mobile/android/util/dh;
invoke-direct {v0, p0, p1, v1}, Lcom/spotify/mobile/android/util/dh;-><init>(Landroid/widget/ImageView;Lcom/spotify/mobile/android/util/dg;Z)V
invoke-virtual {p0, v2, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V
:cond_27
invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/util/dh;->a(Lcom/squareup/picasso/f;)V
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/dh;->a(Lcom/spotify/mobile/android/util/dg;)V
return-object v0
.end method
.method public static a(Landroid/widget/ImageView;Lcom/squareup/picasso/f;)Lcom/squareup/picasso/ai;
.registers 3
invoke-static {}, Lcom/spotify/mobile/android/ui/b/a;->a()Lcom/spotify/mobile/android/util/dg;
move-result-object v0
invoke-static {p0, v0, p1}, Lcom/spotify/mobile/android/util/df;->a(Landroid/widget/ImageView;Lcom/spotify/mobile/android/util/dg;Lcom/squareup/picasso/f;)Lcom/squareup/picasso/ai;
move-result-object v0
return-object v0
.end method
.method public final a()Lcom/squareup/picasso/Picasso;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/util/df;->a:Lcom/squareup/picasso/Picasso;
return-object v0
.end method