.class final Lcom/mapquest/android/maps/k;
.super Ljava/lang/Object;
.source "FSTileCache.java"

# interfaces
.implements Lcom/mapquest/android/maps/q;


# instance fields
.field a:I

.field b:I

.field final synthetic c:I

.field final synthetic d:Lcom/mapquest/android/maps/h;


# direct methods
.method constructor <init>(Lcom/mapquest/android/maps/h;I)V
    .registers 4

    iput-object p1, p0, Lcom/mapquest/android/maps/k;->d:Lcom/mapquest/android/maps/h;

    iput p2, p0, Lcom/mapquest/android/maps/k;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p0, Lcom/mapquest/android/maps/k;->c:I

    iput v0, p0, Lcom/mapquest/android/maps/k;->a:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)V
    .registers 6

    iget v0, p0, Lcom/mapquest/android/maps/k;->b:I

    int-to-long v0, v0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget v2, p0, Lcom/mapquest/android/maps/k;->a:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :goto_12
    return-void

    :cond_13
    iget v0, p0, Lcom/mapquest/android/maps/k;->b:I

    int-to-long v0, v0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/mapquest/android/maps/k;->b:I

    goto :goto_12
.end method
