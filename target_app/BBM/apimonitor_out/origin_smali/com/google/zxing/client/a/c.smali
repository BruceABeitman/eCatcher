.class public final Lcom/google/zxing/client/a/c;
.super Lcom/google/zxing/client/a/a;
.source "AddressBookDoCoMoResultParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/client/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/zxing/m;)Lcom/google/zxing/client/a/q;
    .registers 17

    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/a/c;->b(Lcom/google/zxing/m;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "MECARD:"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    const-string v0, "N:"

    invoke-static {v0, v4}, Lcom/google/zxing/client/a/c;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    goto :goto_d

    :cond_18
    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_a7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_46
    const-string v0, "SOUND:"

    const/4 v2, 0x1

    invoke-static {v0, v4, v2}, Lcom/google/zxing/client/a/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const-string v0, "TEL:"

    invoke-static {v0, v4}, Lcom/google/zxing/client/a/c;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v0, "EMAIL:"

    invoke-static {v0, v4}, Lcom/google/zxing/client/a/c;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string v0, "NOTE:"

    const/4 v6, 0x0

    invoke-static {v0, v4, v6}, Lcom/google/zxing/client/a/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    const-string v0, "ADR:"

    invoke-static {v0, v4}, Lcom/google/zxing/client/a/c;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const-string v0, "BDAY:"

    const/4 v6, 0x1

    invoke-static {v0, v4, v6}, Lcom/google/zxing/client/a/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_89

    if-eqz v12, :cond_a9

    const/16 v0, 0x8

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ne v0, v6, :cond_a9

    sget-object v0, Lcom/google/zxing/client/a/u;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_a9

    const/4 v0, 0x1

    :goto_86
    if-nez v0, :cond_89

    const/4 v12, 0x0

    :cond_89
    const-string v0, "URL:"

    const/4 v6, 0x1

    invoke-static {v0, v4, v6}, Lcom/google/zxing/client/a/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v14

    const-string v0, "ORG:"

    const/4 v6, 0x1

    invoke-static {v0, v4, v6}, Lcom/google/zxing/client/a/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    new-instance v0, Lcom/google/zxing/client/a/d;

    invoke-static {v1}, Lcom/google/zxing/client/a/c;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/google/zxing/client/a/d;-><init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_a7
    move-object v1, v0

    goto :goto_46

    :cond_a9
    const/4 v0, 0x0

    goto :goto_86
.end method
