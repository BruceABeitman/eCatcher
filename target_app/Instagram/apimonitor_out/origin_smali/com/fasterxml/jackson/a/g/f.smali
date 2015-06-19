.class public final Lcom/fasterxml/jackson/a/g/f;
.super Lcom/fasterxml/jackson/a/g/i;
.source "DefaultPrettyPrinter.java"


# static fields
.field public static final a:Lcom/fasterxml/jackson/a/g/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fasterxml/jackson/a/g/f;

    invoke-direct {v0}, Lcom/fasterxml/jackson/a/g/f;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/a/g/f;->a:Lcom/fasterxml/jackson/a/g/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/g/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/fasterxml/jackson/a/h;I)V
    .registers 4

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeRaw(C)V

    return-void
.end method

.method public final a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
