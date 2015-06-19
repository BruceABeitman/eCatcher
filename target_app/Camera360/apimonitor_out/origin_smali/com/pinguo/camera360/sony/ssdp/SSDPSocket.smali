.class public Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;
.super Ljava/lang/Object;
.source "SSDPSocket.java"


# static fields
.field private static final DEFAULT_PORT:I = 0x2694

.field private static final SO_TIMEOUT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "PinGuoWifiSettings"


# instance fields
.field broadcastAddress:Ljava/net/InetAddress;

.field mInetSocetAddress:Ljava/net/InetSocketAddress;

.field mInterface:Ljava/net/NetworkInterface;

.field mSSDPSocket:Ljava/net/MulticastSocket;


# direct methods
.method public constructor <init>(Ljava/net/NetworkInterface;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/net/MulticastSocket;

    const/16 v1, 0x2694

    invoke-direct {v0, v1}, Ljava/net/MulticastSocket;-><init>(I)V

    iput-object v0, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->mSSDPSocket:Ljava/net/MulticastSocket;

    iget-object v0, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->mSSDPSocket:Ljava/net/MulticastSocket;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->setSoTimeout(I)V

    const-string/jumbo v0, "239.255.255.250"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->broadcastAddress:Ljava/net/InetAddress;

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->broadcastAddress:Ljava/net/InetAddress;

    const/16 v2, 0x76c

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->mInetSocetAddress:Ljava/net/InetSocketAddress;

    iput-object p1, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->mInterface:Ljava/net/NetworkInterface;

    iget-object v0, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->mInterface:Ljava/net/NetworkInterface;

    if-nez v0, :cond_36

    const-string/jumbo v0, "eth0"

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->mInterface:Ljava/net/NetworkInterface;

    :cond_36
    iget-object v0, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->mInterface:Ljava/net/NetworkInterface;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->mSSDPSocket:Ljava/net/MulticastSocket;

    iget-object v1, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->mInetSocetAddress:Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->mInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v0, v1, v2}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    :goto_43
    return-void

    :cond_44
    iget-object v0, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->mSSDPSocket:Ljava/net/MulticastSocket;

    iget-object v1, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->broadcastAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    goto :goto_43
.end method


# virtual methods
.method public close()V
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->mSSDPSocket:Ljava/net/MulticastSocket;

    if-eqz v1, :cond_16

    :try_start_4
    iget-object v1, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->mInterface:Ljava/net/NetworkInterface;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->mSSDPSocket:Ljava/net/MulticastSocket;

    iget-object v2, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->mInetSocetAddress:Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->mInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v1, v2, v3}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_11} :catch_1f

    :goto_11
    iget-object v1, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->mSSDPSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v1}, Ljava/net/MulticastSocket;->close()V

    :cond_16
    return-void

    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->mSSDPSocket:Ljava/net/MulticastSocket;

    iget-object v2, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->broadcastAddress:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_11

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11
.end method

.method public receive()Ljava/net/DatagramPacket;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x23a6

    new-array v0, v2, [B

    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, v0

    invoke-direct {v1, v0, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iget-object v2, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->mSSDPSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v2, v1}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    return-object v1
.end method

.method public send(Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v5, 0x64

    new-instance v0, Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->broadcastAddress:Ljava/net/InetAddress;

    const/16 v4, 0x76c

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    iget-object v1, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->mSSDPSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v1, v0}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    iget-object v1, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->mSSDPSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v1, v0}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    iget-object v1, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSocket;->mSSDPSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v1, v0}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    return-void
.end method
