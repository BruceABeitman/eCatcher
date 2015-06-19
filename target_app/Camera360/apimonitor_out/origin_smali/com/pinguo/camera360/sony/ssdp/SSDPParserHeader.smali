.class public Lcom/pinguo/camera360/sony/ssdp/SSDPParserHeader;
.super Ljava/lang/Object;
.source "SSDPParserHeader.java"


# static fields
.field public static final LOCATION:Ljava/lang/String; = "LOCATION"

.field private static final TAG:Ljava/lang/String; = "PinGuoWifiSettings"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    new-instance v3, Ljava/util/Scanner;

    invoke-direct {v3, p0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    :cond_8
    invoke-virtual {v3}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v4

    if-nez v4, :cond_10

    const/4 v4, 0x0

    :goto_f
    return-object v4

    :cond_10
    invoke-virtual {v3}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x3a

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_f
.end method

.method public static parseHeaderValue(Ljava/net/DatagramPacket;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0, p1}, Lcom/pinguo/camera360/sony/ssdp/SSDPParserHeader;->parseHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseStartLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parseStartLine(Ljava/net/DatagramPacket;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/pinguo/camera360/sony/ssdp/SSDPParserHeader;->parseStartLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
