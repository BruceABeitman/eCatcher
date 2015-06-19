.class Lcom/baidu/location/c$b;
.super Landroid/telephony/PhoneStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/c;


# direct methods
.method public constructor <init>(Lcom/baidu/location/c;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/c$b;->a:Lcom/baidu/location/c;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/baidu/location/c$b;->a:Lcom/baidu/location/c;

    iget-object v1, p0, Lcom/baidu/location/c$b;->a:Lcom/baidu/location/c;

    invoke-static {v1}, Lcom/baidu/location/c;->if(Lcom/baidu/location/c;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/location/c;->a(Lcom/baidu/location/c;Landroid/telephony/CellLocation;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_13

    goto :goto_2

    :catch_13
    move-exception v0

    goto :goto_2
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/location/c$b;->a:Lcom/baidu/location/c;

    invoke-static {v0}, Lcom/baidu/location/c;->for(Lcom/baidu/location/c;)Lcom/baidu/location/c$a;

    move-result-object v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/baidu/location/c$b;->a:Lcom/baidu/location/c;

    invoke-static {v0}, Lcom/baidu/location/c;->for(Lcom/baidu/location/c;)Lcom/baidu/location/c$a;

    move-result-object v0

    iget-char v0, v0, Lcom/baidu/location/c$a;->new:C

    const/16 v1, 0x67

    if-ne v0, v1, :cond_5a

    iget-object v0, p0, Lcom/baidu/location/c$b;->a:Lcom/baidu/location/c;

    invoke-static {v0}, Lcom/baidu/location/c;->for(Lcom/baidu/location/c;)Lcom/baidu/location/c$a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    iput v1, v0, Lcom/baidu/location/c$a;->int:I

    :cond_20
    :goto_20
    const-string/jumbo v0, "cell strength"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "===== cell singal strength changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/location/c$b;->a:Lcom/baidu/location/c;

    invoke-static {v2}, Lcom/baidu/location/c;->for(Lcom/baidu/location/c;)Lcom/baidu/location/c$a;

    move-result-object v2

    iget v2, v2, Lcom/baidu/location/c$a;->int:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/c$b;->a:Lcom/baidu/location/c;

    invoke-static {v0}, Lcom/baidu/location/c;->a(Lcom/baidu/location/c;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/baidu/location/c$b;->a:Lcom/baidu/location/c;

    invoke-static {v0}, Lcom/baidu/location/c;->a(Lcom/baidu/location/c;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_59
    return-void

    :cond_5a
    iget-object v0, p0, Lcom/baidu/location/c$b;->a:Lcom/baidu/location/c;

    invoke-static {v0}, Lcom/baidu/location/c;->for(Lcom/baidu/location/c;)Lcom/baidu/location/c$a;

    move-result-object v0

    iget-char v0, v0, Lcom/baidu/location/c$a;->new:C

    const/16 v1, 0x63

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/baidu/location/c$b;->a:Lcom/baidu/location/c;

    invoke-static {v0}, Lcom/baidu/location/c;->for(Lcom/baidu/location/c;)Lcom/baidu/location/c$a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    iput v1, v0, Lcom/baidu/location/c$a;->int:I

    goto :goto_20
.end method
