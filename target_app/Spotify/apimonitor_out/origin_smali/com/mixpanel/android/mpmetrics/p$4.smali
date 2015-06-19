.class final Lcom/mixpanel/android/mpmetrics/p$4;
.super Lcom/mixpanel/android/mpmetrics/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mixpanel/android/mpmetrics/p;->b(Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/o;
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mixpanel/android/mpmetrics/p;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/p;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/p$4;->c:Lcom/mixpanel/android/mpmetrics/p;

    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/p$4;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/mixpanel/android/mpmetrics/p;->a:Lcom/mixpanel/android/mpmetrics/l;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mixpanel/android/mpmetrics/p;-><init>(Lcom/mixpanel/android/mpmetrics/l;B)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/p$4;->b:Ljava/lang/String;

    return-object v0
.end method
