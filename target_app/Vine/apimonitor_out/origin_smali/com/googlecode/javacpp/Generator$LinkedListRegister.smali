.class public Lcom/googlecode/javacpp/Generator$LinkedListRegister;
.super Ljava/util/LinkedList;
.source "Generator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacpp/Generator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkedListRegister"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method


# virtual methods
.method public register(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :cond_f
    return v0
.end method
