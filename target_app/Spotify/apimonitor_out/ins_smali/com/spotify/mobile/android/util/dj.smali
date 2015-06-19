.class public final Lcom/spotify/mobile/android/util/dj;
.super Landroid/database/ContentObserver;
.source "SourceFile"
.field public static final a:Landroid/net/Uri;
.field private b:Landroid/media/AudioManager;
.field private c:I
.field private d:Lcom/spotify/mobile/android/util/dk;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;
sput-object v0, Lcom/spotify/mobile/android/util/dj;->a:Landroid/net/Uri;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
.registers 5
invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V
const-string v0, "audio"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/media/AudioManager;
iput-object v0, p0, Lcom/spotify/mobile/android/util/dj;->b:Landroid/media/AudioManager;
iget-object v0, p0, Lcom/spotify/mobile/android/util/dj;->b:Landroid/media/AudioManager;
const/4 v1, 0x3
invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/util/dj;->c:I
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/util/dk;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/util/dj;->d:Lcom/spotify/mobile/android/util/dk;
return-void
.end method
.method public final onChange(Z)V
.registers 6
const/4 v3, 0x3
invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/util/dj;->b:Landroid/media/AudioManager;
invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I
move-result v0
iget v1, p0, Lcom/spotify/mobile/android/util/dj;->c:I
sub-int/2addr v1, v0
if-eqz v1, :cond_23
iput v0, p0, Lcom/spotify/mobile/android/util/dj;->c:I
iget-object v1, p0, Lcom/spotify/mobile/android/util/dj;->d:Lcom/spotify/mobile/android/util/dk;
if-eqz v1, :cond_23
iget-object v1, p0, Lcom/spotify/mobile/android/util/dj;->d:Lcom/spotify/mobile/android/util/dk;
int-to-float v0, v0
iget-object v2, p0, Lcom/spotify/mobile/android/util/dj;->b:Landroid/media/AudioManager;
invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I
move-result v2
int-to-float v2, v2
div-float/2addr v0, v2
invoke-interface {v1, v0}, Lcom/spotify/mobile/android/util/dk;->a(F)V
:cond_23
return-void
.end method