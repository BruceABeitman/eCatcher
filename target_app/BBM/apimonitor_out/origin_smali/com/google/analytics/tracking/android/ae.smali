.class final Lcom/google/analytics/tracking/android/ae;
.super Ljava/util/TimerTask;
.source "GAServiceProxy.java"


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/y;


# direct methods
.method private constructor <init>(Lcom/google/analytics/tracking/android/y;)V
    .registers 2

    iput-object p1, p0, Lcom/google/analytics/tracking/android/ae;->a:Lcom/google/analytics/tracking/android/y;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/analytics/tracking/android/y;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/ae;-><init>(Lcom/google/analytics/tracking/android/y;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/analytics/tracking/android/ae;->a:Lcom/google/analytics/tracking/android/y;

    iget-object v0, v0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    sget-object v1, Lcom/google/analytics/tracking/android/ac;->a:Lcom/google/analytics/tracking/android/ac;

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/google/analytics/tracking/android/ae;->a:Lcom/google/analytics/tracking/android/y;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/y;->g()V

    :cond_d
    return-void
.end method
