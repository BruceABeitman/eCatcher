.class final Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/google/common/base/b;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel$1;->a:Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->getTrackUri()Ljava/lang/String;
move-result-object v0
return-object v0
.end method