.class Ljavax/mail/Session$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/mail/Session;->getSystemResources(Ljava/lang/String;)[Ljava/net/URL;
.end annotation


# instance fields
.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ljavax/mail/Session$6;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    check-cast v0, [Ljava/net/URL;

    :try_start_3
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Ljavax/mail/Session$6;->val$name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v3

    :cond_e
    :goto_e
    if-eqz v3, :cond_16

    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_26

    :cond_16
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_25

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v0, v1, [Ljava/net/URL;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    :cond_25
    :goto_25
    return-object v0

    :cond_26
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    if-eqz v1, :cond_e

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_31} :catch_32
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_31} :catch_34

    goto :goto_e

    :catch_32
    move-exception v1

    goto :goto_25

    :catch_34
    move-exception v1

    goto :goto_25
.end method
