.class public final Lcom/spotify/mobile/android/ui/prettylist/e;
.super Ljava/lang/Object;
.source "SourceFile"
.method public static a(Landroid/app/Activity;)Lcom/spotify/mobile/android/ui/prettylist/c;
.registers 2
new-instance v0, Lcom/spotify/mobile/android/ui/prettylist/d;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/prettylist/d;-><init>(Landroid/content/Context;)V
invoke-static {p0, v0}, Lcom/spotify/mobile/android/ui/prettylist/e;->a(Landroid/app/Activity;Lcom/spotify/mobile/android/ui/prettylist/c;)Lcom/spotify/mobile/android/ui/prettylist/c;
move-result-object v0
return-object v0
.end method
.method private static a(Landroid/app/Activity;Lcom/spotify/mobile/android/ui/prettylist/c;)Lcom/spotify/mobile/android/ui/prettylist/c;
.registers 4
const v0, 0x1010054
invoke-static {p0, v0}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;I)I
move-result v0
invoke-interface {p1}, Lcom/spotify/mobile/android/ui/prettylist/c;->j()Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V
invoke-interface {p1, v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(I)V
instance-of v0, p0, Lcom/spotify/music/MainActivity;
if-eqz v0, :cond_20
check-cast p0, Lcom/spotify/music/MainActivity;
new-instance v0, Lcom/spotify/mobile/android/ui/prettylist/e$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/prettylist/e$1;-><init>(Lcom/spotify/music/MainActivity;)V
invoke-interface {p1, v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(Lcom/spotify/mobile/android/ui/prettylist/a;)V
:goto_1f
return-object p1
:cond_20
sget-object v0, Lcom/spotify/mobile/android/ui/prettylist/a;->a:Lcom/spotify/mobile/android/ui/prettylist/a;
invoke-interface {p1, v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(Lcom/spotify/mobile/android/ui/prettylist/a;)V
goto :goto_1f
.end method
.method public static b(Landroid/app/Activity;)Lcom/spotify/mobile/android/ui/prettylist/c;
.registers 2
new-instance v0, Lcom/spotify/mobile/android/ui/prettylist/b;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/prettylist/b;-><init>(Landroid/content/Context;)V
invoke-static {p0, v0}, Lcom/spotify/mobile/android/ui/prettylist/e;->a(Landroid/app/Activity;Lcom/spotify/mobile/android/ui/prettylist/c;)Lcom/spotify/mobile/android/ui/prettylist/c;
move-result-object v0
return-object v0
.end method
.method public static c(Landroid/app/Activity;)Lcom/spotify/mobile/android/ui/prettylist/c;
.registers 2
new-instance v0, Lcom/spotify/mobile/android/ui/prettylist/f;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/prettylist/f;-><init>(Landroid/content/Context;)V
invoke-static {p0, v0}, Lcom/spotify/mobile/android/ui/prettylist/e;->a(Landroid/app/Activity;Lcom/spotify/mobile/android/ui/prettylist/c;)Lcom/spotify/mobile/android/ui/prettylist/c;
move-result-object v0
return-object v0
.end method