.class public Lcom/ibm/icu/text/MessageFormat$Field;
.super Ljava/text/Format$Field;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/MessageFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field public static final ARGUMENT:Lcom/ibm/icu/text/MessageFormat$Field; = null

.field private static final serialVersionUID:J = 0x683a3b3b54a02d5dL


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ibm/icu/text/MessageFormat$Field;

    const-string v1, "message argument field"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/MessageFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/MessageFormat$Field;->ARGUMENT:Lcom/ibm/icu/text/MessageFormat$Field;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/ibm/icu/text/MessageFormat$Field;

    if-eq v0, v1, :cond_10

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "A subclass of MessageFormat.Field must implement readResolve."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    invoke-virtual {p0}, Lcom/ibm/icu/text/MessageFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/MessageFormat$Field;->ARGUMENT:Lcom/ibm/icu/text/MessageFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/MessageFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/ibm/icu/text/MessageFormat$Field;->ARGUMENT:Lcom/ibm/icu/text/MessageFormat$Field;

    return-object v0

    :cond_23
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Unknown attribute name."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
