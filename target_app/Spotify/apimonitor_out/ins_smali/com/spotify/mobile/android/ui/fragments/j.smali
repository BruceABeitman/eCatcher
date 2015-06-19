.class public final Lcom/spotify/mobile/android/ui/fragments/j;
.super Ljava/lang/Object;
.source "SourceFile"
.method public static a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.registers 3
const/16 v0, 0x3c
const/4 v1, 0x2
invoke-static {p0, v0, v1}, Lcom/spotify/mobile/android/ui/fragments/j;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method private static a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
.registers 8
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0900fd
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v0
new-instance v1, Lcom/spotify/android/paste/graphics/f;
sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->X:Lcom/spotify/android/paste/graphics/SpotifyIcon;
int-to-float v3, p1
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-static {v3, v4}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v3
int-to-float v3, v3
invoke-direct {v1, p0, v2, v3}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;F)V
invoke-virtual {v1, v0}, Lcom/spotify/android/paste/graphics/f;->a(Landroid/content/res/ColorStateList;)V
const v2, 0x3f19999a
invoke-static {p0, p2, v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/j;->a(Landroid/content/Context;ILandroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;F)Lcom/spotify/android/paste/graphics/d;
move-result-object v0
return-object v0
.end method
.method private static a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;I)Landroid/graphics/drawable/Drawable;
.registers 5
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0900fd
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v0
invoke-static {p0, p1, p2, v0}, Lcom/spotify/mobile/android/ui/fragments/j;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;ILandroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method private static a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;II)Landroid/graphics/drawable/Drawable;
.registers 6
new-instance v0, Lcom/spotify/android/paste/graphics/f;
int-to-float v1, p2
invoke-direct {v0, p0, p1, v1}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;F)V
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/graphics/f;->a(I)V
return-object v0
.end method
.method private static a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;ILandroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;
.registers 6
new-instance v0, Lcom/spotify/android/paste/graphics/f;
int-to-float v1, p2
invoke-direct {v0, p0, p1, v1}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;F)V
invoke-virtual {v0, p3}, Lcom/spotify/android/paste/graphics/f;->a(Landroid/content/res/ColorStateList;)V
return-object v0
.end method
.method private static a(Landroid/content/Context;ILandroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;F)Lcom/spotify/android/paste/graphics/d;
.registers 8
new-instance v0, Lcom/spotify/android/paste/graphics/d;
invoke-direct {v0, p3, p4}, Lcom/spotify/android/paste/graphics/d;-><init>(Landroid/graphics/drawable/Drawable;F)V
int-to-float v1, p1
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v1
int-to-float v1, v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/graphics/d;->a(F)V
invoke-virtual {v0, p2}, Lcom/spotify/android/paste/graphics/d;->a(Landroid/content/res/ColorStateList;)V
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0900c1
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/graphics/d;->a(I)V
return-object v0
.end method
.method public static b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.registers 3
const/16 v0, 0x3c
const/4 v1, 0x2
invoke-static {p0, v0, v1}, Lcom/spotify/mobile/android/ui/fragments/j;->b(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method private static b(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
.registers 8
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0900fd
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v0
new-instance v1, Lcom/spotify/android/paste/graphics/f;
sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->V:Lcom/spotify/android/paste/graphics/SpotifyIcon;
int-to-float v3, p1
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-static {v3, v4}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v3
int-to-float v3, v3
invoke-direct {v1, p0, v2, v3}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;F)V
invoke-virtual {v1, v0}, Lcom/spotify/android/paste/graphics/f;->a(Landroid/content/res/ColorStateList;)V
const v2, 0x3f19999a
invoke-static {p0, p2, v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/j;->a(Landroid/content/Context;ILandroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;F)Lcom/spotify/android/paste/graphics/d;
move-result-object v0
return-object v0
.end method
.method private static b(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;I)Landroid/graphics/drawable/Drawable;
.registers 5
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0900f8
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v0
invoke-static {p0, p1, p2, v0}, Lcom/spotify/mobile/android/ui/fragments/j;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;ILandroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public static c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.registers 3
const/16 v0, 0x10
const/4 v1, 0x1
invoke-static {p0, v0, v1}, Lcom/spotify/mobile/android/ui/fragments/j;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public static d(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.registers 3
const/16 v0, 0x10
const/4 v1, 0x1
invoke-static {p0, v0, v1}, Lcom/spotify/mobile/android/ui/fragments/j;->b(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public static e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.registers 4
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->ar:Lcom/spotify/android/paste/graphics/SpotifyIcon;
const/high16 v1, 0x41c0
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v1
invoke-static {p0, v0, v1}, Lcom/spotify/mobile/android/ui/fragments/j;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;I)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public static f(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.registers 4
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->at:Lcom/spotify/android/paste/graphics/SpotifyIcon;
const/high16 v1, 0x41c0
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v1
invoke-static {p0, v0, v1}, Lcom/spotify/mobile/android/ui/fragments/j;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;I)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public static g(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.registers 5
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->at:Lcom/spotify/android/paste/graphics/SpotifyIcon;
const/high16 v1, 0x41c0
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v1
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0900fa
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v2
invoke-static {p0, v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/j;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;ILandroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public static h(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.registers 4
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->as:Lcom/spotify/android/paste/graphics/SpotifyIcon;
const/high16 v1, 0x4180
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v1
invoke-static {p0, v0, v1}, Lcom/spotify/mobile/android/ui/fragments/j;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;I)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public static i(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.registers 4
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->af:Lcom/spotify/android/paste/graphics/SpotifyIcon;
const/high16 v1, 0x41c0
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v1
invoke-static {p0, v0, v1}, Lcom/spotify/mobile/android/ui/fragments/j;->b(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;I)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public static j(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.registers 4
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aP:Lcom/spotify/android/paste/graphics/SpotifyIcon;
const/high16 v1, 0x41c0
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v1
const v2, 0x7f0900a2
invoke-static {p0, v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/j;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;II)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public static k(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.registers 4
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->ap:Lcom/spotify/android/paste/graphics/SpotifyIcon;
const/high16 v1, 0x41b0
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v1
const v2, 0x7f0900a8
invoke-static {p0, v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/j;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;II)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public static l(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.registers 4
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->cL:Lcom/spotify/android/paste/graphics/SpotifyIcon;
const/high16 v1, 0x41c0
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v1
invoke-static {p0, v0, v1}, Lcom/spotify/mobile/android/ui/fragments/j;->b(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;I)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public static m(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.registers 11
const v9, 0x7f0900a8
const v8, 0x7f0900a6
const/4 v7, 0x1
const/4 v6, 0x0
const/high16 v0, 0x41c0
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v0
new-instance v1, Lcom/spotify/android/paste/graphics/f;
sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->l:Lcom/spotify/android/paste/graphics/SpotifyIcon;
int-to-float v3, v0
invoke-direct {v1, p0, v2, v3}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;F)V
new-instance v2, Lcom/spotify/android/paste/graphics/f;
sget-object v3, Lcom/spotify/android/paste/graphics/SpotifyIcon;->l:Lcom/spotify/android/paste/graphics/SpotifyIcon;
int-to-float v4, v0
invoke-direct {v2, p0, v3, v4}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;F)V
new-instance v3, Lcom/spotify/android/paste/graphics/f;
sget-object v4, Lcom/spotify/android/paste/graphics/SpotifyIcon;->ad:Lcom/spotify/android/paste/graphics/SpotifyIcon;
int-to-float v5, v0
invoke-direct {v3, p0, v4, v5}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;F)V
new-instance v4, Lcom/spotify/android/paste/graphics/f;
sget-object v5, Lcom/spotify/android/paste/graphics/SpotifyIcon;->ad:Lcom/spotify/android/paste/graphics/SpotifyIcon;
int-to-float v0, v0
invoke-direct {v4, p0, v5, v0}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;F)V
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-virtual {v1, v0}, Lcom/spotify/android/paste/graphics/f;->a(I)V
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-virtual {v2, v0}, Lcom/spotify/android/paste/graphics/f;->a(I)V
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-virtual {v3, v0}, Lcom/spotify/android/paste/graphics/f;->a(I)V
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-virtual {v4, v0}, Lcom/spotify/android/paste/graphics/f;->a(I)V
new-instance v0, Landroid/graphics/drawable/StateListDrawable;
invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V
const/4 v5, 0x2
new-array v5, v5, [I
fill-array-data v5, :array_98
invoke-virtual {v0, v5, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V
new-array v1, v7, [I
const v5, 0x10100a0
aput v5, v1, v6
invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V
new-array v1, v7, [I
const v2, 0x10100a7
aput v2, v1, v6
invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V
new-array v1, v6, [I
invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0900f9
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v1
const v2, 0x3f4ccccd
invoke-static {p0, v7, v1, v0, v2}, Lcom/spotify/mobile/android/ui/fragments/j;->a(Landroid/content/Context;ILandroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;F)Lcom/spotify/android/paste/graphics/d;
move-result-object v0
return-object v0
:array_98
.array-data 0x4
0xa0t 0x0t 0x1t 0x1t
0xa7t 0x0t 0x1t 0x1t
.end array-data
.end method
.method public static n(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.registers 4
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->ap:Lcom/spotify/android/paste/graphics/SpotifyIcon;
const/high16 v1, 0x41b0
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v1
const v2, 0x7f090078
invoke-static {p0, v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/j;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;II)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public static o(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.registers 5
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aB:Lcom/spotify/android/paste/graphics/SpotifyIcon;
const/high16 v1, 0x41d0
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v1
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0900fc
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v2
invoke-static {p0, v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/j;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;ILandroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public static p(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.registers 5
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->az:Lcom/spotify/android/paste/graphics/SpotifyIcon;
const/high16 v1, 0x41d0
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v1
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0900fb
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v2
invoke-static {p0, v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/j;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;ILandroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public static q(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.registers 4
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aj:Lcom/spotify/android/paste/graphics/SpotifyIcon;
const/high16 v1, 0x41b0
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v1
const v2, 0x7f0900a8
invoke-static {p0, v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/j;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;II)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public static r(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.registers 4
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aj:Lcom/spotify/android/paste/graphics/SpotifyIcon;
const/high16 v1, 0x41b0
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v1
const v2, 0x7f090078
invoke-static {p0, v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/j;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;II)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public static s(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.registers 4
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->ct:Lcom/spotify/android/paste/graphics/SpotifyIcon;
const/high16 v1, 0x41b0
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v1
const v2, 0x7f090078
invoke-static {p0, v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/j;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;II)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method