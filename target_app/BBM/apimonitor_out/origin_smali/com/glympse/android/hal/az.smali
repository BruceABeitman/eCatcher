.class Lcom/glympse/android/hal/az;
.super Ljava/lang/Object;
.source "PhoneFavoriteProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private cD:Lcom/glympse/android/hal/PhoneFavoriteProvider;

.field private cE:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GPhoneFavorite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/glympse/android/hal/PhoneFavoriteProvider;Lcom/glympse/android/hal/GVector;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/hal/PhoneFavoriteProvider;",
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GPhoneFavorite;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/hal/az;->cD:Lcom/glympse/android/hal/PhoneFavoriteProvider;

    iput-object v0, p0, Lcom/glympse/android/hal/az;->cE:Lcom/glympse/android/hal/GVector;

    iput-object p1, p0, Lcom/glympse/android/hal/az;->cD:Lcom/glympse/android/hal/PhoneFavoriteProvider;

    iput-object p2, p0, Lcom/glympse/android/hal/az;->cE:Lcom/glympse/android/hal/GVector;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/hal/az;->cD:Lcom/glympse/android/hal/PhoneFavoriteProvider;

    iget-object v1, p0, Lcom/glympse/android/hal/az;->cE:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/PhoneFavoriteProvider;->complete(Lcom/glympse/android/hal/GVector;)V

    return-void
.end method