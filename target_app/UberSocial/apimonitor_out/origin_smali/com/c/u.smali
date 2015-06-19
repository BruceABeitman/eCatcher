.class Lcom/c/u;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final a:Lcom/c/di;


# direct methods
.method constructor <init>(Lcom/c/di;)V
    .registers 2

    iput-object p1, p0, Lcom/c/u;->a:Lcom/c/di;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .registers 3

    iget-object v0, p0, Lcom/c/u;->a:Lcom/c/di;

    invoke-static {v0, p1}, Lcom/c/di;->a(Lcom/c/di;Landroid/telephony/CellLocation;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 3

    iget-object v0, p0, Lcom/c/u;->a:Lcom/c/di;

    invoke-static {v0, p1}, Lcom/c/di;->a(Lcom/c/di;Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public onSignalStrengthChanged(I)V
    .registers 3

    iget-object v0, p0, Lcom/c/u;->a:Lcom/c/di;

    invoke-static {v0, p1}, Lcom/c/di;->a(Lcom/c/di;I)V

    return-void
.end method
