.class public final Lcom/spotify/mobile/android/ui/stuff/k;
.super Ljava/lang/Object;
.source "SourceFile"
.method public static a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.registers 2
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->d:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-static {p0, v0}, Lcom/spotify/mobile/android/ui/stuff/k;->b(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method private static a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/spotify/android/paste/graphics/SpotifyIcon;Z)Landroid/graphics/drawable/Drawable;
.registers 7
const v2, 0x7f01018b
sget-object v0, Lcom/spotify/mobile/android/ui/stuff/k$1;->a:[I
invoke-virtual {p2}, Lcom/spotify/android/paste/graphics/SpotifyIcon;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_3a
:goto_e
return-object p1
:pswitch_f
invoke-static {p0, v2}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;I)I
move-result v1
new-instance v0, Lcom/spotify/android/paste/graphics/d;
const v2, 0x3f19999a
invoke-direct {v0, p1, v2}, Lcom/spotify/android/paste/graphics/d;-><init>(Landroid/graphics/drawable/Drawable;F)V
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/graphics/d;->a(I)V
move-object p1, v0
goto :goto_e
:pswitch_20
invoke-static {p0, v2}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;I)I
move-result v0
new-instance v1, Lcom/spotify/mobile/android/ui/b/d;
const v2, 0x3f28f5c3
if-eqz p3, :cond_2c
const/4 v0, 0x0
:cond_2c
invoke-direct {v1, p1, v2, v0}, Lcom/spotify/mobile/android/ui/b/d;-><init>(Landroid/graphics/drawable/Drawable;FI)V
move-object p1, v1
goto :goto_e
:pswitch_31
new-instance v0, Lcom/spotify/mobile/android/ui/b/d;
const/high16 v1, 0x3f40
invoke-direct {v0, p1, v1}, Lcom/spotify/mobile/android/ui/b/d;-><init>(Landroid/graphics/drawable/Drawable;F)V
move-object p1, v0
goto :goto_e
:pswitch_data_3a
.packed-switch 0x1
:pswitch_f
:pswitch_f
:pswitch_f
:pswitch_f
:pswitch_20
:pswitch_20
:pswitch_20
:pswitch_20
:pswitch_20
:pswitch_20
:pswitch_20
:pswitch_20
:pswitch_31
:pswitch_31
:pswitch_31
:pswitch_31
:pswitch_31
.end packed-switch
.end method
.method public static a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;
.registers 4
invoke-static {p0, p1}, Lcom/spotify/mobile/android/ui/stuff/k;->c(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/android/paste/graphics/f;
move-result-object v0
const/4 v1, 0x1
invoke-static {p0, v0, p1, v1}, Lcom/spotify/mobile/android/ui/stuff/k;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/spotify/android/paste/graphics/SpotifyIcon;Z)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public static b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.registers 2
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->b:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-static {p0, v0}, Lcom/spotify/mobile/android/ui/stuff/k;->b(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public static b(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;
.registers 5
const/4 v2, 0x0
sget-object v0, Lcom/spotify/mobile/android/ui/stuff/k$1;->a:[I
invoke-virtual {p1}, Lcom/spotify/android/paste/graphics/SpotifyIcon;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_78
:pswitch_c
move v0, v2
:goto_d
if-nez v0, :cond_6f
const/4 v1, 0x0
:goto_10
if-nez v1, :cond_36
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "No placeholder was pre-rendered for icon "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "! Using createSpotifyIconDrawable."
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-static {p0, p1}, Lcom/spotify/mobile/android/ui/stuff/k;->c(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/android/paste/graphics/f;
move-result-object v1
move-object v0, v1
check-cast v0, Lcom/spotify/android/paste/graphics/f;
invoke-virtual {v0}, Lcom/spotify/android/paste/graphics/f;->a()V
:cond_36
invoke-static {p0, v1, p1, v2}, Lcom/spotify/mobile/android/ui/stuff/k;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/spotify/android/paste/graphics/SpotifyIcon;Z)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
:pswitch_3b
const v0, 0x7f0200f4
goto :goto_d
:pswitch_3f
const v0, 0x7f0200f3
goto :goto_d
:pswitch_43
const v0, 0x7f0200f6
goto :goto_d
:pswitch_47
const v0, 0x7f0200fa
goto :goto_d
:pswitch_4b
const v0, 0x7f0200f9
goto :goto_d
:pswitch_4f
const v0, 0x7f0200fb
goto :goto_d
:pswitch_53
const v0, 0x7f0200fc
goto :goto_d
:pswitch_57
const v0, 0x7f0200fd
goto :goto_d
:pswitch_5b
const v0, 0x7f0200fe
goto :goto_d
:pswitch_5f
const v0, 0x7f0200f8
goto :goto_d
:pswitch_63
const v0, 0x7f0200f5
goto :goto_d
:pswitch_67
const v0, 0x7f0200ff
goto :goto_d
:pswitch_6b
const v0, 0x7f0200f7
goto :goto_d
:cond_6f
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
goto :goto_10
:pswitch_data_78
.packed-switch 0x1
:pswitch_3b
:pswitch_3b
:pswitch_5b
:pswitch_5b
:pswitch_57
:pswitch_57
:pswitch_4f
:pswitch_4f
:pswitch_4b
:pswitch_4b
:pswitch_c
:pswitch_c
:pswitch_3f
:pswitch_3f
:pswitch_c
:pswitch_c
:pswitch_c
:pswitch_43
:pswitch_43
:pswitch_47
:pswitch_47
:pswitch_53
:pswitch_53
:pswitch_5f
:pswitch_5f
:pswitch_63
:pswitch_63
:pswitch_67
:pswitch_67
:pswitch_6b
:pswitch_6b
.end packed-switch
.end method
.method public static c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.registers 2
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->Z:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-static {p0, v0}, Lcom/spotify/mobile/android/ui/stuff/k;->b(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method private static c(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/android/paste/graphics/f;
.registers 4
new-instance v0, Lcom/spotify/android/paste/graphics/f;
invoke-direct {v0, p0, p1}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V
const v1, 0x7f010189
invoke-static {p0, v1}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;I)I
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/graphics/f;->a(I)V
return-object v0
.end method
.method public static d(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.registers 2
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aL:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-static {p0, v0}, Lcom/spotify/mobile/android/ui/stuff/k;->b(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public static e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.registers 2
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->d:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-static {p0, v0}, Lcom/spotify/mobile/android/ui/stuff/k;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public static f(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.registers 2
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->Z:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-static {p0, v0}, Lcom/spotify/mobile/android/ui/stuff/k;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public static g(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.registers 2
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aL:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-static {p0, v0}, Lcom/spotify/mobile/android/ui/stuff/k;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method