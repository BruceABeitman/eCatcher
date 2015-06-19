.class public Lco/vine/android/player/OnVideoListScrollListener;
.super Ljava/lang/Object;
.source "OnVideoListScrollListener.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final adapter:Lco/vine/android/player/HasVideoPlayerAdapter;


# direct methods
.method public constructor <init>(Lco/vine/android/player/HasVideoPlayerAdapter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/vine/android/player/OnVideoListScrollListener;->adapter:Lco/vine/android/player/HasVideoPlayerAdapter;

    return-void
.end method


# virtual methods
.method public declared-synchronized onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4

    monitor-enter p0

    if-nez p2, :cond_8

    :try_start_3
    iget-object v0, p0, Lco/vine/android/player/OnVideoListScrollListener;->adapter:Lco/vine/android/player/HasVideoPlayerAdapter;

    invoke-interface {v0}, Lco/vine/android/player/HasVideoPlayerAdapter;->playCurrentPosition()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    :cond_8
    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
