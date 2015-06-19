.class public Lcom/twidroid/model/twitter/SavedSearchCompat;
.super Lcom/twidroid/model/twitter/Tweet;
.source "SourceFile"


# direct methods
.method public constructor <init>(JJLcom/twidroid/ui/StringUrlSpan;JZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZJLjava/lang/String;FFJZZILjava/lang/String;)V
    .registers 63

    move/from16 v0, p21

    float-to-double v0, v0

    move-wide/from16 v23, v0

    move/from16 v0, p22

    float-to-double v0, v0

    move-wide/from16 v25, v0

    const/16 v32, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    move/from16 v19, p17

    move-wide/from16 v20, p18

    move-object/from16 v22, p20

    move-wide/from16 v27, p23

    move/from16 v29, p25

    move/from16 v30, p26

    move/from16 v31, p27

    move-object/from16 v33, p28

    invoke-direct/range {v2 .. v33}, Lcom/twidroid/model/twitter/Tweet;-><init>(JJLcom/twidroid/ui/StringUrlSpan;JZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZJLjava/lang/String;DDJZZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twidroid/model/twitter/Tweet;-><init>(Landroid/os/Parcel;)V

    return-void
.end method
