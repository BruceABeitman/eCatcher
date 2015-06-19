.class public Lcom/blackberry/ids/NotificationManager;
.super Ljava/lang/Object;
.source "NotificationManager.java"


# static fields
.field private static a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/blackberry/ids/NotificationElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/blackberry/ids/NotificationManager;->a:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ZLjava/util/LinkedList;ILjava/lang/String;Lcom/blackberry/ids/INotificationCallback;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/blackberry/ids/NotificationElement;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/blackberry/ids/INotificationCallback;",
            ")I"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blackberry/ids/NotificationElement;

    iget-object v4, v0, Lcom/blackberry/ids/NotificationElement;->clientName:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v2, 0x1

    if-eqz p0, :cond_40

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "notify callback removed"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V

    move v0, v1

    :goto_2b
    if-nez v2, :cond_3f

    if-nez p0, :cond_3f

    new-instance v0, Lcom/blackberry/ids/NotificationElement;

    invoke-direct {v0, p3, p4, p2}, Lcom/blackberry/ids/NotificationElement;-><init>(Ljava/lang/String;Lcom/blackberry/ids/INotificationCallback;I)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v0, "notify callback added"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V

    move v0, v1

    :cond_3f
    return v0

    :cond_40
    iput-object p4, v0, Lcom/blackberry/ids/NotificationElement;->callback:Lcom/blackberry/ids/INotificationCallback;

    const-string v0, "notify callback updated"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_2b

    :cond_4b
    move v0, v3

    goto :goto_2b

    :cond_4d
    move v2, v1

    move v0, v3

    goto :goto_2b
.end method

.method public static addNotifier(ILjava/lang/String;Lcom/blackberry/ids/INotificationCallback;)I
    .registers 5

    const/4 v0, -0x1

    if-nez p2, :cond_7

    const v0, 0xc35f

    :goto_6
    return v0

    :cond_7
    packed-switch p0, :pswitch_data_14

    goto :goto_6

    :pswitch_b
    const/4 v0, 0x0

    sget-object v1, Lcom/blackberry/ids/NotificationManager;->a:Ljava/util/LinkedList;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/blackberry/ids/NotificationManager;->a(ZLjava/util/LinkedList;ILjava/lang/String;Lcom/blackberry/ids/INotificationCallback;)I

    move-result v0

    goto :goto_6

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
    .end packed-switch
.end method

.method public static notify(IILjava/lang/String;)V
    .registers 7

    const/4 v3, 0x0

    const-string v0, "in notify callback"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V

    packed-switch p0, :pswitch_data_50

    :cond_b
    return-void

    :pswitch_c
    const-string v0, "notify callback type identity change"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V

    sget-object v0, Lcom/blackberry/ids/NotificationManager;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blackberry/ids/NotificationElement;

    iget-object v2, v0, Lcom/blackberry/ids/NotificationElement;->callback:Lcom/blackberry/ids/INotificationCallback;

    if-eqz v2, :cond_19

    :try_start_29
    iget-object v0, v0, Lcom/blackberry/ids/NotificationElement;->callback:Lcom/blackberry/ids/INotificationCallback;

    invoke-interface {v0, p0, p2, p1}, Lcom/blackberry/ids/INotificationCallback;->call(ILjava/lang/String;I)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_47
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2e} :catch_36

    const-string v0, "notify callback completed"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_19

    :catch_36
    move-exception v0

    :try_start_37
    const-string v0, "notify callback - error completing callback"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_3f
    .catchall {:try_start_37 .. :try_end_3f} :catchall_47

    const-string v0, "notify callback completed"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_19

    :catchall_47
    move-exception v0

    const-string v1, "notify callback completed"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V

    throw v0

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method

.method public static removeNotifier(ILjava/lang/String;Lcom/blackberry/ids/INotificationCallback;)I
    .registers 5

    const/4 v0, -0x1

    packed-switch p0, :pswitch_data_e

    :goto_4
    return v0

    :pswitch_5
    const/4 v0, 0x1

    sget-object v1, Lcom/blackberry/ids/NotificationManager;->a:Ljava/util/LinkedList;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/blackberry/ids/NotificationManager;->a(ZLjava/util/LinkedList;ILjava/lang/String;Lcom/blackberry/ids/INotificationCallback;)I

    move-result v0

    goto :goto_4

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method
