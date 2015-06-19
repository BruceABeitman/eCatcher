.class public Lco/vine/android/player/OnVideoListScrollListener;
.super Ljava/lang/Object;
.source "OnVideoListScrollListener.java"
.implements Landroid/widget/AbsListView$OnScrollListener;
.field private final adapter:Lco/vine/android/player/HasVideoPlayerAdapter;
.method public constructor <init>(Lco/vine/android/player/HasVideoPlayerAdapter;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lco/vine/android/player/OnVideoListScrollListener;->adapter:Lco/vine/android/player/HasVideoPlayerAdapter;
return-void
.end method
.method public declared-synchronized onScroll(Landroid/widget/AbsListView;III)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/player/OnVideoListScrollListener; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
monitor-enter p0
monitor-exit p0
const-string v1, " - Lco/vine/android/player/OnVideoListScrollListener; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public declared-synchronized onScrollStateChanged(Landroid/widget/AbsListView;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/player/OnVideoListScrollListener; onScrollStateChanged "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
monitor-enter p0
if-nez p2, :cond_8
:try_start_3
iget-object v0, p0, Lco/vine/android/player/OnVideoListScrollListener;->adapter:Lco/vine/android/player/HasVideoPlayerAdapter;
invoke-interface {v0}, Lco/vine/android/player/HasVideoPlayerAdapter;->playCurrentPosition()V
:try_end_8
.catchall {:try_start_3 .. :try_end_8} :catchall_a
:cond_8
monitor-exit p0
const-string v1, " - Lco/vine/android/player/OnVideoListScrollListener; onScrollStateChanged"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catchall_a
move-exception v0
monitor-exit p0
throw v0
.end method