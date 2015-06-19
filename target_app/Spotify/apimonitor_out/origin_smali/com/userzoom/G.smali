.class public final Lcom/userzoom/G;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lcom/userzoom/s;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/userzoom/s;

    const-string v1, " "

    invoke-direct {v0, v1}, Lcom/userzoom/s;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/userzoom/G;->a:Lcom/userzoom/s;

    return-void
.end method
