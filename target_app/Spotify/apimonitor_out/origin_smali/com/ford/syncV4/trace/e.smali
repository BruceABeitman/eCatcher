.class public final Lcom/ford/syncV4/trace/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Z

.field protected static b:Lcom/ford/syncV4/trace/b;

.field private static c:J

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ford/syncV4/trace/e;->a:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/ford/syncV4/trace/e;->c:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ford/syncV4/trace/e;->d:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/ford/syncV4/trace/e;->b:Lcom/ford/syncV4/trace/b;

    return-void
.end method

.method private static a(JLcom/ford/syncV4/trace/enums/Mod;Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "<msg><dms>"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "</dms><pid>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "</pid><tid>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "</tid><mod>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ford/syncV4/trace/enums/Mod;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</mod>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;->c:Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;

    if-eq p3, v0, :cond_55

    const-string v0, "<dir>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    sget-object v2, Lcom/ford/syncV4/trace/e$1;->a:[I

    invoke-virtual {p3}, Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_68

    :goto_4d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</dir>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_55
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</msg>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_62
    const-string v0, "rx"

    goto :goto_4d

    :pswitch_65
    const-string v0, "tx"

    goto :goto_4d

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_62
        :pswitch_65
    .end packed-switch
.end method

.method public static a(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<btp>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<btn>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/ford/syncV4/trace/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</btn>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<bta>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</bta>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<bts>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</bts>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</btp>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;Lcom/ford/syncV4/protocol/d;[BIILjava/lang/String;)V
    .registers 13

    const/4 v6, 0x0

    sget-object v0, Lcom/ford/syncV4/trace/enums/Mod;->b:Lcom/ford/syncV4/trace/enums/Mod;

    invoke-static {v0}, Lcom/ford/syncV4/trace/a;->a(Lcom/ford/syncV4/trace/enums/Mod;)Lcom/ford/syncV4/trace/enums/DetailLevel;

    move-result-object v1

    sget-object v0, Lcom/ford/syncV4/trace/enums/DetailLevel;->a:Lcom/ford/syncV4/trace/enums/DetailLevel;

    if-eq v1, v0, :cond_13

    const-string v0, "42baba60-eb57-11df-98cf-0800200c9a66"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_13
    :goto_13
    return-void

    :cond_14
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "<frame>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<hdr>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<ver>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->b()B

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "</ver><cmp>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->c()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "</cmp><ft>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->h()Lcom/ford/syncV4/protocol/enums/b;

    move-result-object v0

    sget-object v4, Lcom/ford/syncV4/protocol/enums/b;->b:Lcom/ford/syncV4/protocol/enums/b;

    if-ne v0, v4, :cond_e4

    const-string v0, "Control"

    :goto_4f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</ft><st>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->i()Lcom/ford/syncV4/protocol/enums/d;

    move-result-object v0

    sget-object v4, Lcom/ford/syncV4/protocol/enums/d;->b:Lcom/ford/syncV4/protocol/enums/d;

    if-ne v0, v4, :cond_100

    const-string v0, "rpc"

    :goto_61
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</st><sid>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->e()B

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "</sid><sz>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->f()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "</sz>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->d()B

    move-result v0

    invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->h()Lcom/ford/syncV4/protocol/enums/b;

    move-result-object v4

    sget-object v5, Lcom/ford/syncV4/protocol/enums/b;->b:Lcom/ford/syncV4/protocol/enums/b;

    if-ne v4, v5, :cond_138

    const-string v4, "<ca>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/ford/syncV4/protocol/enums/a;->a:Lcom/ford/syncV4/protocol/enums/a;

    invoke-virtual {v4}, Lcom/ford/syncV4/protocol/enums/a;->a()B

    move-result v4

    if-ne v0, v4, :cond_10c

    const-string v0, "StartSession"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9f
    :goto_9f
    const-string v0, "</ca>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a4
    :goto_a4
    const-string v0, "</hdr>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/ford/syncV4/trace/enums/DetailLevel;->c:Lcom/ford/syncV4/trace/enums/DetailLevel;

    if-ne v1, v0, :cond_c9

    if-eqz p2, :cond_c9

    if-lez p4, :cond_c9

    const-string v0, "<d>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p2, p3, p4}, Lcom/ford/syncV4/trace/c;->a([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "</d>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c9
    const-string v0, "</frame>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v3, Lcom/ford/syncV4/trace/e;->c:J

    sub-long/2addr v0, v3

    sget-object v3, Lcom/ford/syncV4/trace/enums/Mod;->b:Lcom/ford/syncV4/trace/enums/Mod;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v3, p0, v2}, Lcom/ford/syncV4/trace/e;->a(JLcom/ford/syncV4/trace/enums/Mod;Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ford/syncV4/trace/e;->a(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_e4
    sget-object v4, Lcom/ford/syncV4/protocol/enums/b;->e:Lcom/ford/syncV4/protocol/enums/b;

    if-ne v0, v4, :cond_ec

    const-string v0, "Consecutive"

    goto/16 :goto_4f

    :cond_ec
    sget-object v4, Lcom/ford/syncV4/protocol/enums/b;->d:Lcom/ford/syncV4/protocol/enums/b;

    if-ne v0, v4, :cond_f4

    const-string v0, "First"

    goto/16 :goto_4f

    :cond_f4
    sget-object v4, Lcom/ford/syncV4/protocol/enums/b;->c:Lcom/ford/syncV4/protocol/enums/b;

    if-ne v0, v4, :cond_fc

    const-string v0, "Single"

    goto/16 :goto_4f

    :cond_fc
    const-string v0, "Unknown"

    goto/16 :goto_4f

    :cond_100
    sget-object v4, Lcom/ford/syncV4/protocol/enums/d;->c:Lcom/ford/syncV4/protocol/enums/d;

    if-ne v0, v4, :cond_108

    const-string v0, "bulk"

    goto/16 :goto_61

    :cond_108
    const-string v0, "Unknown"

    goto/16 :goto_61

    :cond_10c
    sget-object v4, Lcom/ford/syncV4/protocol/enums/a;->b:Lcom/ford/syncV4/protocol/enums/a;

    invoke-virtual {v4}, Lcom/ford/syncV4/protocol/enums/a;->a()B

    move-result v4

    if-ne v0, v4, :cond_11a

    const-string v0, "StartSessionACK"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9f

    :cond_11a
    sget-object v4, Lcom/ford/syncV4/protocol/enums/a;->c:Lcom/ford/syncV4/protocol/enums/a;

    invoke-virtual {v4}, Lcom/ford/syncV4/protocol/enums/a;->a()B

    move-result v4

    if-ne v0, v4, :cond_129

    const-string v0, "StartSessionNACK"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9f

    :cond_129
    sget-object v4, Lcom/ford/syncV4/protocol/enums/a;->d:Lcom/ford/syncV4/protocol/enums/a;

    invoke-virtual {v4}, Lcom/ford/syncV4/protocol/enums/a;->a()B

    move-result v4

    if-ne v0, v4, :cond_9f

    const-string v0, "EndSession"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9f

    :cond_138
    invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->h()Lcom/ford/syncV4/protocol/enums/b;

    move-result-object v4

    sget-object v5, Lcom/ford/syncV4/protocol/enums/b;->e:Lcom/ford/syncV4/protocol/enums/b;

    if-ne v4, v5, :cond_166

    const-string v4, "<fsn>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_153

    const-string v0, "lastFrame"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_14c
    const-string v0, "</fsn>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a4

    :cond_153
    const-string v4, "%02X"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14c

    :cond_166
    invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->h()Lcom/ford/syncV4/protocol/enums/b;

    move-result-object v0

    sget-object v4, Lcom/ford/syncV4/protocol/enums/b;->d:Lcom/ford/syncV4/protocol/enums/b;

    if-ne v0, v4, :cond_19b

    invoke-static {p2, v6}, Lcom/ford/syncV4/util/a;->a([BI)I

    move-result v0

    const/4 v4, 0x4

    invoke-static {p2, v4}, Lcom/ford/syncV4/util/a;->a([BI)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<total>"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "</total><numframes>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "</numframes>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a4

    :cond_19b
    invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->h()Lcom/ford/syncV4/protocol/enums/b;

    move-result-object v0

    sget-object v4, Lcom/ford/syncV4/protocol/enums/b;->c:Lcom/ford/syncV4/protocol/enums/b;

    if-ne v0, v4, :cond_a4

    const-string v0, "<single/>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a4
.end method

.method public static a(Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;Lcom/ford/syncV4/proxy/b;Ljava/lang/String;)V
    .registers 12

    const/4 v1, 0x1

    sget-object v0, Lcom/ford/syncV4/trace/enums/Mod;->d:Lcom/ford/syncV4/trace/enums/Mod;

    invoke-static {v0}, Lcom/ford/syncV4/trace/a;->a(Lcom/ford/syncV4/trace/enums/Mod;)Lcom/ford/syncV4/trace/enums/DetailLevel;

    move-result-object v3

    sget-object v0, Lcom/ford/syncV4/trace/enums/DetailLevel;->a:Lcom/ford/syncV4/trace/enums/DetailLevel;

    if-eq v3, v0, :cond_13

    const-string v0, "42baba60-eb57-11df-98cf-0800200c9a66"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_13
    :goto_13
    return-void

    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/ford/syncV4/trace/e;->c:J

    sub-long/2addr v4, v6

    sget-object v6, Lcom/ford/syncV4/trace/enums/Mod;->d:Lcom/ford/syncV4/trace/enums/Mod;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<op>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ford/syncV4/proxy/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</op>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    const/4 v0, 0x0

    instance-of v8, p1, Lcom/ford/syncV4/proxy/d;

    if-eqz v8, :cond_8e

    move-object v0, p1

    check-cast v0, Lcom/ford/syncV4/proxy/d;

    invoke-virtual {v0}, Lcom/ford/syncV4/proxy/d;->c()Ljava/lang/Integer;

    move-result-object v0

    :goto_44
    if-eqz v1, :cond_53

    const-string v1, "<cid>"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "</cid>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_53
    const-string v0, "<type>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ford/syncV4/proxy/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</type>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/ford/syncV4/trace/enums/DetailLevel;->c:Lcom/ford/syncV4/trace/enums/DetailLevel;

    if-ne v3, v0, :cond_82

    new-instance v0, Lcom/ford/syncV4/trace/d;

    invoke-direct {v0, p1}, Lcom/ford/syncV4/trace/d;-><init>(Lcom/ford/syncV4/proxy/b;)V

    invoke-virtual {v0}, Lcom/ford/syncV4/trace/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ford/syncV4/trace/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<d>"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</d>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_82
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v6, p0, v0}, Lcom/ford/syncV4/trace/e;->a(JLcom/ford/syncV4/trace/enums/Mod;Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ford/syncV4/trace/e;->a(Ljava/lang/String;)V

    goto :goto_13

    :cond_8e
    instance-of v8, p1, Lcom/ford/syncV4/proxy/f;

    if-eqz v8, :cond_9a

    move-object v0, p1

    check-cast v0, Lcom/ford/syncV4/proxy/f;

    invoke-virtual {v0}, Lcom/ford/syncV4/proxy/f;->c()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_44

    :cond_9a
    move v1, v2

    goto :goto_44
.end method

.method public static a(Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;[BLjava/lang/String;)V
    .registers 8

    sget-object v0, Lcom/ford/syncV4/trace/enums/Mod;->c:Lcom/ford/syncV4/trace/enums/Mod;

    invoke-static {v0}, Lcom/ford/syncV4/trace/a;->a(Lcom/ford/syncV4/trace/enums/Mod;)Lcom/ford/syncV4/trace/enums/DetailLevel;

    move-result-object v0

    sget-object v1, Lcom/ford/syncV4/trace/enums/DetailLevel;->a:Lcom/ford/syncV4/trace/enums/DetailLevel;

    if-eq v0, v1, :cond_12

    const-string v1, "42baba60-eb57-11df-98cf-0800200c9a66"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/ford/syncV4/trace/e;->c:J

    sub-long/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<sz>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "</sz>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/ford/syncV4/trace/enums/DetailLevel;->c:Lcom/ford/syncV4/trace/enums/DetailLevel;

    if-ne v0, v4, :cond_42

    const-string v0, "<d>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ford/syncV4/trace/c;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</d>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_42
    sget-object v0, Lcom/ford/syncV4/trace/enums/Mod;->c:Lcom/ford/syncV4/trace/enums/Mod;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, p0, v3}, Lcom/ford/syncV4/trace/e;->a(JLcom/ford/syncV4/trace/enums/Mod;Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ford/syncV4/trace/e;->a(Ljava/lang/String;)V

    goto :goto_12
.end method

.method private static a(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    invoke-static {p0}, Lcom/ford/syncV4/transport/SiphonServer;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "SyncTrace"

    invoke-static {v0, p0}, Lcom/ford/syncV4/util/NativeLogTool;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    sget-object v0, Lcom/ford/syncV4/trace/e;->b:Lcom/ford/syncV4/trace/b;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_14

    if-nez v0, :cond_13

    :cond_13
    :goto_13
    return-void

    :catch_14
    move-exception v0

    const-string v1, "SyncTrace"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failure writing XML trace message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ford/syncV4/util/NativeLogTool;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    sget-object v0, Lcom/ford/syncV4/trace/enums/Mod;->f:Lcom/ford/syncV4/trace/enums/Mod;

    invoke-static {v0}, Lcom/ford/syncV4/trace/a;->a(Lcom/ford/syncV4/trace/enums/Mod;)Lcom/ford/syncV4/trace/enums/DetailLevel;

    move-result-object v0

    sget-object v1, Lcom/ford/syncV4/trace/enums/DetailLevel;->a:Lcom/ford/syncV4/trace/enums/DetailLevel;

    if-eq v0, v1, :cond_12

    const-string v0, "42baba60-eb57-11df-98cf-0800200c9a66"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    invoke-static {p0}, Lcom/ford/syncV4/trace/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/ford/syncV4/trace/e;->c:J

    sub-long/2addr v1, v3

    sget-object v3, Lcom/ford/syncV4/trace/enums/Mod;->f:Lcom/ford/syncV4/trace/enums/Mod;

    sget-object v4, Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;->c:Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<d>"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "</d>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/ford/syncV4/trace/e;->a(JLcom/ford/syncV4/trace/enums/Mod;Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ford/syncV4/trace/e;->a(Ljava/lang/String;)V

    goto :goto_12
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;[BIILjava/lang/String;)V
    .registers 12

    sget-object v0, Lcom/ford/syncV4/trace/enums/Mod;->a:Lcom/ford/syncV4/trace/enums/Mod;

    invoke-static {v0}, Lcom/ford/syncV4/trace/a;->a(Lcom/ford/syncV4/trace/enums/Mod;)Lcom/ford/syncV4/trace/enums/DetailLevel;

    move-result-object v0

    sget-object v1, Lcom/ford/syncV4/trace/enums/DetailLevel;->a:Lcom/ford/syncV4/trace/enums/DetailLevel;

    if-eq v0, v1, :cond_12

    const-string v0, "42baba60-eb57-11df-98cf-0800200c9a66"

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_23

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    if-eqz p0, :cond_38

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_38

    const-string v1, "<desc>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</desc>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_38
    if-eqz p3, :cond_a5

    const-string v1, "<sz>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "</sz>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ford/syncV4/trace/enums/Mod;->a:Lcom/ford/syncV4/trace/enums/Mod;

    invoke-static {v1}, Lcom/ford/syncV4/trace/a;->a(Lcom/ford/syncV4/trace/enums/Mod;)Lcom/ford/syncV4/trace/enums/DetailLevel;

    move-result-object v1

    sget-object v2, Lcom/ford/syncV4/trace/enums/DetailLevel;->c:Lcom/ford/syncV4/trace/enums/DetailLevel;

    if-ne v1, v2, :cond_a5

    if-eqz p3, :cond_a5

    if-lez p5, :cond_a5

    const-string v1, "<d>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4, p5}, Lcom/ford/syncV4/trace/c;->a([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_9d

    const-string v2, "SyncTrace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "b64 string length ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") isn\'t multiple of 4: buf.length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", offset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ford/syncV4/util/NativeLogTool;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</d>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/ford/syncV4/trace/e;->c:J

    sub-long/2addr v1, v3

    sget-object v3, Lcom/ford/syncV4/trace/enums/Mod;->a:Lcom/ford/syncV4/trace/enums/Mod;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, p2, v0}, Lcom/ford/syncV4/trace/e;->a(JLcom/ford/syncV4/trace/enums/Mod;Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ford/syncV4/trace/e;->a(Ljava/lang/String;)V

    goto/16 :goto_12
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;[BILjava/lang/String;)V
    .registers 13

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/ford/syncV4/trace/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;[BIILjava/lang/String;)V

    return-void
.end method
