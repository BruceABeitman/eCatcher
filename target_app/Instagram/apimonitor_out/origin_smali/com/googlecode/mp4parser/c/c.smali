.class public Lcom/googlecode/mp4parser/c/c;
.super Ljava/lang/Object;
.source "Path.java"


# static fields
.field static a:Ljava/util/regex/Pattern;

.field static final synthetic b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/googlecode/mp4parser/c/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/googlecode/mp4parser/c/c;->b:Z

    const-string v0, "(....|\\.\\.)(\\[(.*)\\])?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/c/c;->a:Ljava/util/regex/Pattern;

    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/coremedia/iso/boxes/a;Ljava/lang/String;)Lcom/coremedia/iso/boxes/a;
    .registers 4

    invoke-static {p0, p1}, Lcom/googlecode/mp4parser/c/c;->b(Lcom/coremedia/iso/boxes/a;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/a;

    goto :goto_b
.end method

.method public static b(Lcom/coremedia/iso/boxes/a;Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coremedia/iso/boxes/a;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/a;",
            ">;"
        }
    .end annotation

    const/16 v1, 0x2f

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    :goto_d
    invoke-interface {p0}, Lcom/coremedia/iso/boxes/a;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Lcom/coremedia/iso/boxes/a;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object p0

    goto :goto_d

    :cond_18
    sget-boolean v0, Lcom/googlecode/mp4parser/c/c;->b:Z

    if-nez v0, :cond_3d

    instance-of v0, p0, Lcom/coremedia/iso/IsoFile;

    if-nez v0, :cond_3d

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/coremedia/iso/boxes/a;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no parent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3d
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/googlecode/mp4parser/c/c;->b(Lcom/coremedia/iso/boxes/a;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_45
    return-object v0

    :cond_46
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_45

    :cond_51
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    move-object v1, v0

    :goto_6c
    sget-object v0, Lcom/googlecode/mp4parser/c/c;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_d9

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const-string v2, ".."

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    invoke-interface {p0}, Lcom/coremedia/iso/boxes/a;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/c/c;->b(Lcom/coremedia/iso/boxes/a;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_45

    :cond_8d
    const-string v0, ""

    move-object v1, v0

    goto :goto_6c

    :cond_91
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f4

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v2, v0

    :goto_a2
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    check-cast p0, Lcom/coremedia/iso/boxes/ContainerBox;

    invoke-interface {p0}, Lcom/coremedia/iso/boxes/ContainerBox;->getBoxes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_b1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/a;

    invoke-interface {v0}, Lcom/coremedia/iso/boxes/a;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f2

    if-eq v2, v3, :cond_cb

    if-ne v2, v4, :cond_d2

    :cond_cb
    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/c/c;->b(Lcom/coremedia/iso/boxes/a;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_d2
    add-int/lit8 v0, v4, 0x1

    :goto_d4
    move v4, v0

    goto :goto_b1

    :cond_d6
    move-object v0, v5

    goto/16 :goto_45

    :cond_d9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid path."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f2
    move v0, v4

    goto :goto_d4

    :cond_f4
    move v2, v3

    goto :goto_a2
.end method
