.class public final Lcom/mixpanel/android/mpmetrics/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/mixpanel/android/mpmetrics/x;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mixpanel/android/mpmetrics/x;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/c;->a:Lcom/mixpanel/android/mpmetrics/x;

    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/mixpanel/android/mpmetrics/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/mixpanel/android/mpmetrics/x;
    .registers 2

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/c;->a:Lcom/mixpanel/android/mpmetrics/x;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/c;->c:Ljava/lang/String;

    return-object v0
.end method
