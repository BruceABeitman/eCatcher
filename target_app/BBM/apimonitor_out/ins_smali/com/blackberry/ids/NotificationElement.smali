.class public Lcom/blackberry/ids/NotificationElement;
.super Ljava/lang/Object;
.source "NotificationElement.java"
.field public callback:Lcom/blackberry/ids/INotificationCallback;
.field public clientName:Ljava/lang/String;
.field public type:I
.method public constructor <init>(Ljava/lang/String;Lcom/blackberry/ids/INotificationCallback;I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/blackberry/ids/NotificationElement;->clientName:Ljava/lang/String;
iput-object p2, p0, Lcom/blackberry/ids/NotificationElement;->callback:Lcom/blackberry/ids/INotificationCallback;
iput p3, p0, Lcom/blackberry/ids/NotificationElement;->type:I
return-void
.end method