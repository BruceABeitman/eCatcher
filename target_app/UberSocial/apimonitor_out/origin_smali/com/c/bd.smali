.class Lcom/c/bd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final a:Lcom/c/az;


# direct methods
.method constructor <init>(Lcom/c/az;)V
    .registers 2

    iput-object p1, p0, Lcom/c/bd;->a:Lcom/c/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .registers 3

    iget-object v0, p0, Lcom/c/bd;->a:Lcom/c/az;

    invoke-static {v0}, Lcom/c/az;->a(Lcom/c/az;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/c/bd;->a:Lcom/c/az;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/c/bd;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
