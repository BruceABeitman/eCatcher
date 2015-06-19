.class final Lcom/spotify/mobile/android/spotlets/tinkerbell/c$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/content/Context;
.field final synthetic b:Lcom/spotify/mobile/android/spotlets/tinkerbell/c;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/tinkerbell/c;Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/c$1;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/c;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/c$1;->a:Landroid/content/Context;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 8
const/4 v0, 0x0
invoke-static {}, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;->values()[Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;
move-result-object v2
array-length v3, v2
move v1, v0
:goto_7
if-ge v1, v3, :cond_14
aget-object v4, v2, v1
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/c$1;->a:Landroid/content/Context;
const/4 v6, 0x1
invoke-virtual {v4, v5, v6}, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;->a(Landroid/content/Context;Z)V
add-int/lit8 v1, v1, 0x1
goto :goto_7
:cond_14
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/c$1;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/c;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/c;->a(Lcom/spotify/mobile/android/spotlets/tinkerbell/c;)Lcom/spotify/mobile/android/util/da;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/c$1;->a:Landroid/content/Context;
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/util/da;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v1
invoke-static {}, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;->values()[Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;
move-result-object v2
array-length v3, v2
:goto_29
if-ge v0, v3, :cond_37
aget-object v4, v2, v0
invoke-virtual {v4}, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;->a()Lcom/spotify/mobile/android/util/cz;
move-result-object v4
invoke-virtual {v1, v4}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/util/cy;
add-int/lit8 v0, v0, 0x1
goto :goto_29
:cond_37
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/cy;->b()V
return-void
.end method