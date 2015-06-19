.class Lcom/glympse/android/lib/gs;
.super Lcom/glympse/android/lib/fb;
.source "PersonList.java"


# static fields
.field public static final rd:I = 0x64


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private nU:I

.field private pl:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GPerson;",
            ">;"
        }
    .end annotation
.end field

.field private qZ:Ljava/lang/String;

.field private ra:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GPerson;",
            ">;"
        }
    .end annotation
.end field

.field private re:Lcom/glympse/android/lib/GPersonListPrivate;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GPersonListPrivate;Lcom/glympse/android/hal/GVector;Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/lib/GGlympsePrivate;",
            "Lcom/glympse/android/lib/GPersonListPrivate;",
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GPerson;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/glympse/android/lib/fb;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/gs;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iput-object p2, p0, Lcom/glympse/android/lib/gs;->re:Lcom/glympse/android/lib/GPersonListPrivate;

    iput-object p3, p0, Lcom/glympse/android/lib/gs;->pl:Lcom/glympse/android/hal/GVector;

    iput-object p4, p0, Lcom/glympse/android/lib/gs;->qZ:Ljava/lang/String;

    iput p5, p0, Lcom/glympse/android/lib/gs;->nU:I

    new-instance v0, Lcom/glympse/android/hal/GVector;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/glympse/android/hal/GVector;-><init>(I)V

    iput-object v0, p0, Lcom/glympse/android/lib/gs;->ra:Lcom/glympse/android/hal/GVector;

    return-void
.end method

.method private cj()V
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/glympse/android/lib/gs;->qZ:Ljava/lang/String;

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/glympse/android/lib/gs;->qZ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/glympse/android/lib/gs;->qZ:Ljava/lang/String;

    :cond_16
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/glympse/android/lib/gs;->qZ:Ljava/lang/String;

    invoke-static {v7}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1a0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/glympse/android/lib/gs;->qZ:Ljava/lang/String;

    invoke-static {v3}, Lcom/glympse/android/lib/go;->getNormalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3e

    const-string v1, " "

    invoke-static {v6, v1}, Lcom/glympse/android/hal/Helpers;->split(Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/hal/GVector;

    move-result-object v2

    invoke-interface {v2}, Lcom/glympse/android/core/GArray;->length()I

    move-result v1

    :cond_3e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/glympse/android/lib/gs;->qZ:Ljava/lang/String;

    invoke-static {v3}, Lcom/glympse/android/lib/ContactEmail;->getNormalizedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/glympse/android/lib/gs;->qZ:Ljava/lang/String;

    const-string v4, "-"

    const-string v7, ""

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    const-string v7, ""

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v7, ""

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "("

    const-string v7, ""

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ")"

    const-string v7, ""

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/glympse/android/lib/gs;->qZ:Ljava/lang/String;

    invoke-static {v3}, Lcom/glympse/android/lib/ContactPostal;->getNormalizedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v7, v5

    move-object v8, v6

    move-object v5, v3

    move-object v6, v4

    move v3, v1

    move-object v4, v2

    :goto_80
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/glympse/android/lib/gs;->pl:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v1}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v14

    const/4 v1, 0x0

    move v13, v1

    :goto_8a
    if-ge v13, v14, :cond_198

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/glympse/android/lib/gs;->_aborted:Z

    if-nez v1, :cond_198

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/glympse/android/lib/gs;->pl:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v1, v13}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GPerson;

    const/4 v10, 0x0

    const/4 v2, 0x0

    if-nez v8, :cond_dc

    const/4 v2, 0x1

    move v9, v2

    :goto_a2
    invoke-interface {v1}, Lcom/glympse/android/lib/GPerson;->getContacts()Lcom/glympse/android/core/GArray;

    move-result-object v15

    invoke-interface {v15}, Lcom/glympse/android/core/GArray;->length()I

    move-result v16

    const/4 v2, 0x0

    move v12, v2

    :goto_ac
    move/from16 v0, v16

    if-ge v12, v0, :cond_193

    invoke-interface {v15, v12}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/glympse/android/lib/GContact;

    invoke-interface {v2}, Lcom/glympse/android/lib/GContact;->getType()I

    move-result v17

    move-object/from16 v0, p0

    iget v11, v0, Lcom/glympse/android/lib/gs;->nU:I

    and-int v11, v11, v17

    if-eqz v11, :cond_d8

    const/4 v11, 0x0

    if-eqz v9, :cond_14f

    const/4 v11, 0x1

    :cond_c6
    :goto_c6
    if-eqz v11, :cond_d8

    if-nez v10, :cond_d5

    invoke-static {v1}, Lcom/glympse/android/lib/PersonLocal;->createPerson(Lcom/glympse/android/lib/GPerson;)Lcom/glympse/android/lib/PersonLocal;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/glympse/android/lib/gs;->ra:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v11, v10}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    :cond_d5
    invoke-virtual {v10, v2}, Lcom/glympse/android/lib/PersonLocal;->addContact(Lcom/glympse/android/lib/GContact;)V

    :cond_d8
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_ac

    :cond_dc
    invoke-interface {v1}, Lcom/glympse/android/lib/GPerson;->getNormalizedFirstName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v1}, Lcom/glympse/android/lib/GPerson;->getNormalizedLastName()Ljava/lang/String;

    move-result-object v16

    invoke-interface {v1}, Lcom/glympse/android/lib/GPerson;->getNormalizedName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v15}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_f2

    invoke-virtual {v15, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    :cond_f2
    if-nez v2, :cond_100

    invoke-static/range {v16 .. v16}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_100

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    :cond_100
    if-nez v2, :cond_10c

    invoke-static {v9}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_10c

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    :cond_10c
    if-nez v2, :cond_11c

    invoke-interface {v1}, Lcom/glympse/android/lib/GPerson;->getNormalizedCompany()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_11c

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    :cond_11c
    if-nez v2, :cond_19d

    const/4 v9, 0x1

    if-le v3, v9, :cond_19d

    const/4 v9, 0x1

    const/4 v2, 0x0

    move v12, v2

    :goto_124
    if-ge v12, v3, :cond_19b

    invoke-interface {v4, v12}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v15}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_137

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    :cond_137
    if-nez v11, :cond_199

    invoke-static/range {v16 .. v16}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_199

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    :goto_145
    if-nez v2, :cond_14b

    const/4 v2, 0x0

    :goto_148
    move v9, v2

    goto/16 :goto_a2

    :cond_14b
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_124

    :cond_14f
    packed-switch v17, :pswitch_data_1a8

    :pswitch_152
    goto/16 :goto_c6

    :pswitch_154
    invoke-interface {v2}, Lcom/glympse/android/lib/GContact;->getNormalizedAddress()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_c6

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    goto/16 :goto_c6

    :pswitch_166
    invoke-interface {v2}, Lcom/glympse/android/lib/GContact;->getNormalizedAddress()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_c6

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    goto/16 :goto_c6

    :pswitch_178
    invoke-interface {v2}, Lcom/glympse/android/lib/GContact;->getNormalizedAddress()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_c6

    const/4 v11, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    if-eq v11, v0, :cond_190

    const/4 v11, 0x1

    goto/16 :goto_c6

    :cond_190
    const/4 v11, 0x0

    goto/16 :goto_c6

    :cond_193
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto/16 :goto_8a

    :cond_198
    return-void

    :cond_199
    move v2, v11

    goto :goto_145

    :cond_19b
    move v2, v9

    goto :goto_148

    :cond_19d
    move v9, v2

    goto/16 :goto_a2

    :cond_1a0
    move-object v7, v5

    move-object v8, v6

    move-object v5, v3

    move-object v6, v4

    move v3, v1

    move-object v4, v2

    goto/16 :goto_80

    :pswitch_data_1a8
    .packed-switch 0x1
        :pswitch_154
        :pswitch_166
        :pswitch_152
        :pswitch_178
    .end packed-switch
.end method


# virtual methods
.method public onComplete()V
    .registers 6

    iget-object v0, p0, Lcom/glympse/android/lib/gs;->re:Lcom/glympse/android/lib/GPersonListPrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/gs;->ra:Lcom/glympse/android/hal/GVector;

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GPersonListPrivate;->setPeopleFound(Lcom/glympse/android/hal/GVector;I)V

    iget-object v0, p0, Lcom/glympse/android/lib/gs;->re:Lcom/glympse/android/lib/GPersonListPrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/gs;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const v2, 0x10003

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/glympse/android/lib/gs;->re:Lcom/glympse/android/lib/GPersonListPrivate;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/glympse/android/lib/GPersonListPrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    return-void
.end method

.method public onProcess()V
    .registers 1

    invoke-direct {p0}, Lcom/glympse/android/lib/gs;->cj()V

    return-void
.end method

.method public useHandler()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
