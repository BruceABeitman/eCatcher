.class Lcom/glympse/android/hal/bn;
.super Ljava/lang/Object;
.source "SmsProvider.java"


# instance fields
.field protected ew:Ljava/lang/String;

.field protected ex:Ljava/lang/String;

.field protected ey:Lcom/glympse/android/hal/GSmsListener;

.field final synthetic ez:Lcom/glympse/android/hal/bm;


# direct methods
.method constructor <init>(Lcom/glympse/android/hal/bm;Ljava/lang/String;Ljava/lang/String;Lcom/glympse/android/hal/GSmsListener;)V
    .registers 5

    iput-object p1, p0, Lcom/glympse/android/hal/bn;->ez:Lcom/glympse/android/hal/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/glympse/android/hal/bn;->ew:Ljava/lang/String;

    iput-object p3, p0, Lcom/glympse/android/hal/bn;->ex:Ljava/lang/String;

    iput-object p4, p0, Lcom/glympse/android/hal/bn;->ey:Lcom/glympse/android/hal/GSmsListener;

    return-void
.end method
