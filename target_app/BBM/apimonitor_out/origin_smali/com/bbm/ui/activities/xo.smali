.class public final Lcom/bbm/ui/activities/xo;
.super Ljava/lang/Object;
.source "MessageBubbleColorAssignment.java"


# instance fields
.field private a:I

.field private b:I

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bbm/ui/activities/xp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/bbm/ui/activities/xo;->a:I

    iput v0, p0, Lcom/bbm/ui/activities/xo;->b:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/xo;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/xo;->d:Ljava/util/List;

    iget-object v7, p0, Lcom/bbm/ui/activities/xo;->d:Ljava/util/List;

    new-instance v0, Lcom/bbm/ui/activities/xp;

    const v1, 0x7f02006a

    const v2, 0x7f02006d

    const v3, 0x7f02006c

    const v4, 0x7f02006b

    const v5, 0x7f09004c

    const v6, 0x7f0201a0

    invoke-direct/range {v0 .. v6}, Lcom/bbm/ui/activities/xp;-><init>(IIIIII)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/bbm/ui/activities/xo;->d:Ljava/util/List;

    new-instance v0, Lcom/bbm/ui/activities/xp;

    const v1, 0x7f02006e

    const v2, 0x7f020071

    const v3, 0x7f020070

    const v4, 0x7f02006f

    const v5, 0x7f09004d

    const v6, 0x7f0201a1

    invoke-direct/range {v0 .. v6}, Lcom/bbm/ui/activities/xp;-><init>(IIIIII)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/bbm/ui/activities/xo;->d:Ljava/util/List;

    new-instance v0, Lcom/bbm/ui/activities/xp;

    const v1, 0x7f020072

    const v2, 0x7f020075

    const v3, 0x7f020074

    const v4, 0x7f020073

    const v5, 0x7f09004e

    const v6, 0x7f0201a2

    invoke-direct/range {v0 .. v6}, Lcom/bbm/ui/activities/xp;-><init>(IIIIII)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/bbm/ui/activities/xo;->d:Ljava/util/List;

    new-instance v0, Lcom/bbm/ui/activities/xp;

    const v1, 0x7f020076

    const v2, 0x7f020079

    const v3, 0x7f020078

    const v4, 0x7f020077

    const v5, 0x7f09004f

    const v6, 0x7f0201a3

    invoke-direct/range {v0 .. v6}, Lcom/bbm/ui/activities/xp;-><init>(IIIIII)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/bbm/ui/activities/xo;->d:Ljava/util/List;

    new-instance v0, Lcom/bbm/ui/activities/xp;

    const v1, 0x7f02007a

    const v2, 0x7f02007d

    const v3, 0x7f02007c

    const v4, 0x7f02007b

    const v5, 0x7f090050

    const v6, 0x7f0201a4

    invoke-direct/range {v0 .. v6}, Lcom/bbm/ui/activities/xp;-><init>(IIIIII)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/bbm/ui/activities/xo;->d:Ljava/util/List;

    new-instance v0, Lcom/bbm/ui/activities/xp;

    const v1, 0x7f02007e

    const v2, 0x7f020081

    const v3, 0x7f020080

    const v4, 0x7f02007f

    const v5, 0x7f090051

    const v6, 0x7f0201a5

    invoke-direct/range {v0 .. v6}, Lcom/bbm/ui/activities/xp;-><init>(IIIIII)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/bbm/ui/activities/xo;->d:Ljava/util/List;

    new-instance v0, Lcom/bbm/ui/activities/xp;

    const v1, 0x7f020082

    const v2, 0x7f020085

    const v3, 0x7f020084

    const v4, 0x7f020083

    const v5, 0x7f090052

    const v6, 0x7f0201a6

    invoke-direct/range {v0 .. v6}, Lcom/bbm/ui/activities/xp;-><init>(IIIIII)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/bbm/ui/activities/xo;->d:Ljava/util/List;

    new-instance v0, Lcom/bbm/ui/activities/xp;

    const v1, 0x7f020086

    const v2, 0x7f020089

    const v3, 0x7f020088

    const v4, 0x7f020087

    const v5, 0x7f090053

    const v6, 0x7f0201a7

    invoke-direct/range {v0 .. v6}, Lcom/bbm/ui/activities/xp;-><init>(IIIIII)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/bbm/ui/activities/xo;->d:Ljava/util/List;

    new-instance v0, Lcom/bbm/ui/activities/xp;

    const v1, 0x7f02008a

    const v2, 0x7f02008d

    const v3, 0x7f02008c

    const v4, 0x7f02008b

    const v5, 0x7f090054

    const v6, 0x7f0201a8

    invoke-direct/range {v0 .. v6}, Lcom/bbm/ui/activities/xp;-><init>(IIIIII)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/bbm/ui/activities/xo;->d:Ljava/util/List;

    new-instance v0, Lcom/bbm/ui/activities/xp;

    const v1, 0x7f02008e

    const v2, 0x7f020091

    const v3, 0x7f020090

    const v4, 0x7f02008f

    const v5, 0x7f090055

    const v6, 0x7f0201a9

    invoke-direct/range {v0 .. v6}, Lcom/bbm/ui/activities/xp;-><init>(IIIIII)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/xo;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/bbm/ui/activities/xo;->b:I

    return-void
.end method

.method public static a()Lcom/bbm/ui/activities/xp;
    .registers 7

    new-instance v0, Lcom/bbm/ui/activities/xp;

    const v1, 0x7f020097

    const v2, 0x7f02009b

    const v3, 0x7f020099

    const v4, 0x7f020098

    const v5, 0x7f090056

    const v6, 0x7f0201aa

    invoke-direct/range {v0 .. v6}, Lcom/bbm/ui/activities/xp;-><init>(IIIIII)V

    return-object v0
.end method

.method public static b()Lcom/bbm/ui/activities/xp;
    .registers 7

    new-instance v0, Lcom/bbm/ui/activities/xp;

    const v1, 0x7f020069

    const v2, 0x7f020095

    const v3, 0x7f020093

    const v4, 0x7f020092

    const v5, 0x7f09004b

    const v6, 0x7f02019f

    invoke-direct/range {v0 .. v6}, Lcom/bbm/ui/activities/xp;-><init>(IIIIII)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/bbm/ui/activities/xp;
    .registers 6

    iget-object v1, p0, Lcom/bbm/ui/activities/xo;->d:Ljava/util/List;

    iget v0, p0, Lcom/bbm/ui/activities/xo;->a:I

    iget-object v2, p0, Lcom/bbm/ui/activities/xo;->c:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v0, p0, Lcom/bbm/ui/activities/xo;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_18
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/xp;

    return-object v0

    :cond_1f
    iget v2, p0, Lcom/bbm/ui/activities/xo;->a:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/bbm/ui/activities/xo;->b:I

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/bbm/ui/activities/xo;->a:I

    iget-object v2, p0, Lcom/bbm/ui/activities/xo;->c:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18
.end method
