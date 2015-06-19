.class public final Lcom/userzoom/aw;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;FF)V
    .registers 9

    const-string v0, "UzTouchEventsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swipe "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;

    move-result-object v0

    const/4 v1, 0x2

    float-to-int v2, p1

    float-to-int v3, p2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Swipe "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Luserzoom/com/a;->a(IIILjava/lang/String;)V

    return-void
.end method
