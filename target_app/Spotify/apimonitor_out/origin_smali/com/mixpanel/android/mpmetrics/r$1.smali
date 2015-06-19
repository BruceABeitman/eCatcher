.class final Lcom/mixpanel/android/mpmetrics/r$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mixpanel/android/mpmetrics/r;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/mixpanel/android/mpmetrics/r;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/r;)V
    .registers 2

    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/r$1;->a:Lcom/mixpanel/android/mpmetrics/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/mixpanel/android/mpmetrics/r;->f()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r$1;->a:Lcom/mixpanel/android/mpmetrics/r;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/r;->a(Lcom/mixpanel/android/mpmetrics/r;)V

    invoke-static {}, Lcom/mixpanel/android/mpmetrics/r;->g()Z

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method
