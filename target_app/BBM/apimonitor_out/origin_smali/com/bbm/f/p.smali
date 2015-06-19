.class final Lcom/bbm/f/p;
.super Lcom/bbm/j/a;
.source "NativeServiceLayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/j/a",
        "<",
        "Lcom/blackberry/ids/UserAuthState$AuthState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/f/j;


# direct methods
.method constructor <init>(Lcom/bbm/f/j;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/f/p;->a:Lcom/bbm/f/j;

    invoke-direct {p0}, Lcom/bbm/j/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .registers 4

    invoke-static {}, Lcom/blackberry/ids/IDS;->getCurrentAuthState()Lcom/blackberry/ids/UserAuthState$AuthState;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BBID reports authentication state "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/blackberry/ids/UserAuthState$AuthState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0
.end method
