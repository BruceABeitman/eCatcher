.class public final Lcom/bbm/util/n;
.super Landroid/text/format/DateUtils;
.source "BBMDateUtils.java"


# direct methods
.method public static a(Landroid/content/Context;JJI)Ljava/lang/String;
    .registers 41

    new-instance v25, Ljava/util/Formatter;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-direct {v0, v3, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v26

    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_177

    const/4 v3, 0x1

    move/from16 v24, v3

    :goto_1d
    and-int/lit8 v3, p5, 0x2

    if-eqz v3, :cond_17c

    const/4 v3, 0x1

    move/from16 v23, v3

    :goto_24
    and-int/lit8 v3, p5, 0x4

    if-eqz v3, :cond_181

    const/4 v10, 0x1

    :goto_29
    and-int/lit8 v3, p5, 0x8

    if-eqz v3, :cond_184

    const/4 v3, 0x1

    move/from16 v22, v3

    :goto_30
    move/from16 v0, p5

    and-int/lit16 v3, v0, 0x2000

    if-eqz v3, :cond_189

    const/4 v3, 0x1

    move v7, v3

    :goto_38
    const v3, 0x88000

    and-int v3, v3, p5

    if-eqz v3, :cond_18d

    const/4 v3, 0x1

    move v6, v3

    :goto_41
    const/high16 v3, 0x9

    and-int v3, v3, p5

    if-eqz v3, :cond_191

    const/4 v3, 0x1

    move/from16 v21, v3

    :goto_4a
    and-int/lit8 v3, p5, 0x20

    if-eqz v3, :cond_196

    const/4 v3, 0x1

    move/from16 v20, v3

    :goto_51
    const/high16 v3, 0x2

    and-int v3, v3, p5

    if-eqz v3, :cond_19b

    const/4 v3, 0x1

    move/from16 v19, v3

    :goto_5a
    cmp-long v3, p1, p3

    if-nez v3, :cond_1a0

    const/4 v3, 0x1

    :goto_5f
    new-instance v18, Landroid/text/format/Time;

    invoke-direct/range {v18 .. v18}, Landroid/text/format/Time;-><init>()V

    if-eqz v7, :cond_1a3

    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    :goto_70
    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/bbm/util/n;->a(Landroid/text/format/Time;Ljava/util/Calendar;)V

    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    if-eqz v3, :cond_1a9

    const/4 v4, 0x0

    move-object/from16 v17, v18

    :goto_84
    if-nez v3, :cond_ab

    move-object/from16 v0, v17

    iget v5, v0, Landroid/text/format/Time;->hour:I

    move-object/from16 v0, v17

    iget v7, v0, Landroid/text/format/Time;->minute:I

    or-int/2addr v5, v7

    move-object/from16 v0, v17

    iget v7, v0, Landroid/text/format/Time;->second:I

    or-int/2addr v5, v7

    if-nez v5, :cond_ab

    if-eqz v24, :cond_9b

    const/4 v5, 0x1

    if-gt v4, v5, :cond_ab

    :cond_9b
    move-object/from16 v0, v17

    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v17

    iput v4, v0, Landroid/text/format/Time;->monthDay:I

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->normalize(Z)J

    :cond_ab
    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v27, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v28, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v29, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v30, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v31, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v32, v0

    const-string v5, ""

    const-string v4, ""

    if-eqz v23, :cond_e2

    if-eqz v6, :cond_1da

    const-string v4, "%a"

    :goto_d9
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_1de

    move-object v4, v5

    :cond_e2
    :goto_e2
    const-string v7, ""

    const-string v6, ""

    if-eqz v24, :cond_722

    const-string v8, ""

    move/from16 v0, p5

    and-int/lit16 v6, v0, 0x80

    if-eqz v6, :cond_1e6

    const/4 v6, 0x1

    move v7, v6

    :goto_f2
    and-int/lit8 v6, p5, 0x40

    if-eqz v6, :cond_1ea

    const/4 v6, 0x1

    :goto_f7
    if-eqz v7, :cond_1ed

    const/4 v6, 0x1

    :goto_fa
    if-eqz v6, :cond_1f8

    const-string v6, "hour_minute_24"

    const-string v7, "string"

    const-string v8, "android"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    :goto_10f
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v3, :cond_3c9

    move-object v6, v7

    :goto_118
    move-object v15, v6

    :goto_119
    if-nez v10, :cond_71c

    if-nez v22, :cond_3e2

    move/from16 v0, v29

    move/from16 v1, v32

    if-eq v0, v1, :cond_3d1

    const/4 v6, 0x1

    :goto_124
    move v14, v6

    :goto_125
    if-eqz v19, :cond_3e5

    const-string v6, "numeric_date"

    const-string v8, "string"

    const-string v9, "android"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v13, v6

    :goto_13a
    if-eqz v23, :cond_4af

    if-eqz v24, :cond_49b

    const-string v6, "wday1_date1_time1_wday2_date2_time2"

    const-string v8, "string"

    const-string v9, "android"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_150
    if-eqz v20, :cond_4d9

    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_4d9

    move/from16 v0, v29

    move/from16 v1, v32

    if-ne v0, v1, :cond_4d9

    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    :goto_172
    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_177
    const/4 v3, 0x0

    move/from16 v24, v3

    goto/16 :goto_1d

    :cond_17c
    const/4 v3, 0x0

    move/from16 v23, v3

    goto/16 :goto_24

    :cond_181
    const/4 v10, 0x0

    goto/16 :goto_29

    :cond_184
    const/4 v3, 0x0

    move/from16 v22, v3

    goto/16 :goto_30

    :cond_189
    const/4 v3, 0x0

    move v7, v3

    goto/16 :goto_38

    :cond_18d
    const/4 v3, 0x0

    move v6, v3

    goto/16 :goto_41

    :cond_191
    const/4 v3, 0x0

    move/from16 v21, v3

    goto/16 :goto_4a

    :cond_196
    const/4 v3, 0x0

    move/from16 v20, v3

    goto/16 :goto_51

    :cond_19b
    const/4 v3, 0x0

    move/from16 v19, v3

    goto/16 :goto_5a

    :cond_1a0
    const/4 v3, 0x0

    goto/16 :goto_5f

    :cond_1a3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    goto/16 :goto_70

    :cond_1a9
    if-eqz v7, :cond_1d5

    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    :goto_1b5
    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {v5, v4}, Lcom/bbm/util/n;->a(Landroid/text/format/Time;Ljava/util/Calendar;)V

    move-object/from16 v0, v18

    iget-wide v7, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v7, v8}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v4

    iget-wide v7, v5, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v7, v8}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v7

    sub-int v4, v7, v4

    move-object/from16 v17, v5

    goto/16 :goto_84

    :cond_1d5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    goto :goto_1b5

    :cond_1da
    const-string v4, "%A"

    goto/16 :goto_d9

    :cond_1de
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_e2

    :cond_1e6
    const/4 v6, 0x0

    move v7, v6

    goto/16 :goto_f2

    :cond_1ea
    const/4 v6, 0x0

    goto/16 :goto_f7

    :cond_1ed
    if-eqz v6, :cond_1f2

    const/4 v6, 0x0

    goto/16 :goto_fa

    :cond_1f2
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    goto/16 :goto_fa

    :cond_1f8
    const v6, 0x84000

    and-int v6, v6, p5

    if-eqz v6, :cond_2c0

    const/4 v6, 0x1

    move/from16 v16, v6

    :goto_202
    move/from16 v0, p5

    and-int/lit16 v6, v0, 0x100

    if-eqz v6, :cond_2c5

    const/4 v6, 0x1

    move v15, v6

    :goto_20a
    move/from16 v0, p5

    and-int/lit16 v6, v0, 0x200

    if-eqz v6, :cond_2c9

    const/4 v6, 0x1

    move v14, v6

    :goto_212
    move/from16 v0, p5

    and-int/lit16 v6, v0, 0x400

    if-eqz v6, :cond_2cd

    const/4 v6, 0x1

    move v13, v6

    :goto_21a
    move/from16 v0, p5

    and-int/lit16 v6, v0, 0x800

    if-eqz v6, :cond_2d1

    const/4 v6, 0x1

    move v12, v6

    :goto_222
    move/from16 v0, p5

    and-int/lit16 v6, v0, 0x1000

    if-eqz v6, :cond_2d5

    const/4 v6, 0x1

    :goto_229
    move-object/from16 v0, v18

    iget v7, v0, Landroid/text/format/Time;->minute:I

    if-nez v7, :cond_2d8

    move-object/from16 v0, v18

    iget v7, v0, Landroid/text/format/Time;->second:I

    if-nez v7, :cond_2d8

    const/4 v7, 0x1

    :goto_236
    move-object/from16 v0, v17

    iget v9, v0, Landroid/text/format/Time;->minute:I

    if-nez v9, :cond_2db

    move-object/from16 v0, v17

    iget v9, v0, Landroid/text/format/Time;->second:I

    if-nez v9, :cond_2db

    const/4 v9, 0x1

    move v11, v9

    :goto_244
    if-eqz v16, :cond_2f7

    if-eqz v7, :cond_2f7

    if-eqz v15, :cond_2df

    const-string v9, "hour_cap_ampm"

    const-string v33, "string"

    const-string v34, "android"

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v9, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_260
    if-nez v3, :cond_29e

    if-eqz v16, :cond_33f

    if-eqz v11, :cond_33f

    if-eqz v15, :cond_329

    const-string v8, "hour_cap_ampm"

    const-string v15, "string"

    const-string v16, "android"

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v8, v15, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_27c
    move-object/from16 v0, v17

    iget v15, v0, Landroid/text/format/Time;->hour:I

    const/16 v16, 0xc

    move/from16 v0, v16

    if-ne v15, v0, :cond_381

    if-eqz v11, :cond_381

    if-nez v14, :cond_381

    if-eqz v13, :cond_36d

    const-string v6, "Noon"

    const-string v8, "string"

    const-string v11, "android"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v8, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_29e
    :goto_29e
    move-object/from16 v0, v18

    iget v6, v0, Landroid/text/format/Time;->hour:I

    const/16 v11, 0xc

    if-ne v6, v11, :cond_71f

    if-eqz v7, :cond_71f

    if-nez v14, :cond_71f

    if-eqz v13, :cond_3b5

    const-string v6, "Noon"

    const-string v7, "string"

    const-string v9, "android"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_10f

    :cond_2c0
    const/4 v6, 0x0

    move/from16 v16, v6

    goto/16 :goto_202

    :cond_2c5
    const/4 v6, 0x0

    move v15, v6

    goto/16 :goto_20a

    :cond_2c9
    const/4 v6, 0x0

    move v14, v6

    goto/16 :goto_212

    :cond_2cd
    const/4 v6, 0x0

    move v13, v6

    goto/16 :goto_21a

    :cond_2d1
    const/4 v6, 0x0

    move v12, v6

    goto/16 :goto_222

    :cond_2d5
    const/4 v6, 0x0

    goto/16 :goto_229

    :cond_2d8
    const/4 v7, 0x0

    goto/16 :goto_236

    :cond_2db
    const/4 v9, 0x0

    move v11, v9

    goto/16 :goto_244

    :cond_2df
    const-string v9, "hour_ampm"

    const-string v33, "string"

    const-string v34, "android"

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v9, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_260

    :cond_2f7
    if-eqz v15, :cond_311

    const-string v9, "hour_minute_cap_ampm"

    const-string v33, "string"

    const-string v34, "android"

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v9, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_260

    :cond_311
    const-string v9, "hour_minute_ampm"

    const-string v33, "string"

    const-string v34, "android"

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v9, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_260

    :cond_329
    const-string v8, "hour_ampm"

    const-string v15, "string"

    const-string v16, "android"

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v8, v15, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_27c

    :cond_33f
    if-eqz v15, :cond_357

    const-string v8, "hour_minute_cap_ampm"

    const-string v15, "string"

    const-string v16, "android"

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v8, v15, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_27c

    :cond_357
    const-string v8, "hour_minute_ampm"

    const-string v15, "string"

    const-string v16, "android"

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v8, v15, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_27c

    :cond_36d
    const-string v6, "noon"

    const-string v8, "string"

    const-string v11, "android"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v8, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_29e

    :cond_381
    move-object/from16 v0, v17

    iget v15, v0, Landroid/text/format/Time;->hour:I

    if-nez v15, :cond_29e

    if-eqz v11, :cond_29e

    if-nez v12, :cond_29e

    if-eqz v6, :cond_3a1

    const-string v6, "Midnight"

    const-string v8, "string"

    const-string v11, "android"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v8, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_29e

    :cond_3a1
    const-string v6, "midnight"

    const-string v8, "string"

    const-string v11, "android"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v8, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_29e

    :cond_3b5
    const-string v6, "noon"

    const-string v7, "string"

    const-string v9, "android"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_10f

    :cond_3c9
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_118

    :cond_3d1
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v6}, Landroid/text/format/Time;->setToNow()V

    iget v6, v6, Landroid/text/format/Time;->year:I

    move/from16 v0, v29

    if-eq v0, v6, :cond_3e2

    const/4 v6, 0x1

    goto/16 :goto_124

    :cond_3e2
    const/4 v6, 0x0

    goto/16 :goto_124

    :cond_3e5
    if-eqz v14, :cond_441

    if-eqz v21, :cond_415

    if-eqz v20, :cond_400

    const-string v6, "abbrev_month_year"

    const-string v8, "string"

    const-string v9, "android"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v13, v6

    goto/16 :goto_13a

    :cond_400
    const-string v6, "abbrev_month_day_year"

    const-string v8, "string"

    const-string v9, "android"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v13, v6

    goto/16 :goto_13a

    :cond_415
    if-eqz v20, :cond_42c

    const-string v6, "month_year"

    const-string v8, "string"

    const-string v9, "android"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v13, v6

    goto/16 :goto_13a

    :cond_42c
    const-string v6, "month_day_year"

    const-string v8, "string"

    const-string v9, "android"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v13, v6

    goto/16 :goto_13a

    :cond_441
    if-eqz v21, :cond_46f

    if-eqz v20, :cond_45a

    const-string v6, "abbrev_month"

    const-string v8, "string"

    const-string v9, "android"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v13, v6

    goto/16 :goto_13a

    :cond_45a
    const-string v6, "abbrev_month_day"

    const-string v8, "string"

    const-string v9, "android"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v13, v6

    goto/16 :goto_13a

    :cond_46f
    if-eqz v20, :cond_486

    const-string v6, "month"

    const-string v8, "string"

    const-string v9, "android"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v13, v6

    goto/16 :goto_13a

    :cond_486
    const-string v6, "month_day"

    const-string v8, "string"

    const-string v9, "android"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v13, v6

    goto/16 :goto_13a

    :cond_49b
    const-string v6, "wday1_date1_wday2_date2"

    const-string v8, "string"

    const-string v9, "android"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_150

    :cond_4af
    if-eqz v24, :cond_4c5

    const-string v6, "date1_time1_date2_time2"

    const-string v8, "string"

    const-string v9, "android"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_150

    :cond_4c5
    const-string v6, "date1_date2"

    const-string v8, "string"

    const-string v9, "android"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_150

    :cond_4d9
    move/from16 v0, v29

    move/from16 v1, v32

    if-ne v0, v1, :cond_4e1

    if-eqz v20, :cond_50a

    :cond_4e1
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v5, 0x1

    aput-object v3, v9, v5

    const/4 v3, 0x2

    aput-object v7, v9, v3

    const/4 v3, 0x3

    aput-object v4, v9, v3

    const/4 v3, 0x4

    aput-object v8, v9, v3

    const/4 v3, 0x5

    aput-object v15, v9, v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    goto/16 :goto_172

    :cond_50a
    if-eqz v19, :cond_5a7

    const-string v6, "%m"

    :goto_50e
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v8, "%-d"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v8, "%Y"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v3, :cond_5c1

    const/4 v8, 0x0

    :goto_527
    if-eqz v3, :cond_5c9

    const/4 v6, 0x0

    move-object v12, v6

    :goto_52b
    if-eqz v3, :cond_5d4

    const/4 v6, 0x0

    move-object v11, v6

    :goto_52f
    if-nez v19, :cond_718

    if-nez v21, :cond_718

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const-string v9, "fa"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_718

    const-string v6, "%-B"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "%-B"

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_553
    move/from16 v0, v28

    move/from16 v1, v31

    if-eq v0, v1, :cond_5df

    const/4 v3, 0x0

    if-eqz v23, :cond_55d

    const/4 v3, 0x1

    :cond_55d
    if-eqz v14, :cond_561

    add-int/lit8 v3, v3, 0x2

    :cond_561
    if-eqz v24, :cond_565

    add-int/lit8 v3, v3, 0x4

    :cond_565
    if-eqz v19, :cond_569

    add-int/lit8 v3, v3, 0x8

    :cond_569
    sget-object v13, Lcom/bbm/util/n;->sameYearTable:[I

    aget v3, v13, v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v13, 0xc

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v13, v14

    const/4 v5, 0x1

    aput-object v10, v13, v5

    const/4 v5, 0x2

    aput-object v16, v13, v5

    const/4 v5, 0x3

    aput-object v20, v13, v5

    const/4 v5, 0x4

    aput-object v7, v13, v5

    const/4 v5, 0x5

    aput-object v4, v13, v5

    const/4 v4, 0x6

    aput-object v8, v13, v4

    const/4 v4, 0x7

    aput-object v12, v13, v4

    const/16 v4, 0x8

    aput-object v11, v13, v4

    const/16 v4, 0x9

    aput-object v15, v13, v4

    const/16 v4, 0xa

    aput-object v9, v13, v4

    const/16 v4, 0xb

    aput-object v6, v13, v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v13}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    goto/16 :goto_172

    :cond_5a7
    if-eqz v21, :cond_5bd

    const-string v6, "short_format_month"

    const-string v8, "string"

    const-string v9, "android"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_50e

    :cond_5bd
    const-string v6, "%B"

    goto/16 :goto_50e

    :cond_5c1
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_527

    :cond_5c9
    const-string v6, "%-d"

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v12, v6

    goto/16 :goto_52b

    :cond_5d4
    const-string v6, "%Y"

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v11, v6

    goto/16 :goto_52f

    :cond_5df
    move/from16 v0, v27

    move/from16 v1, v30

    if-eq v0, v1, :cond_633

    const/4 v3, 0x0

    if-eqz v23, :cond_5e9

    const/4 v3, 0x1

    :cond_5e9
    if-eqz v14, :cond_5ed

    add-int/lit8 v3, v3, 0x2

    :cond_5ed
    if-eqz v24, :cond_5f1

    add-int/lit8 v3, v3, 0x4

    :cond_5f1
    if-eqz v19, :cond_5f5

    add-int/lit8 v3, v3, 0x8

    :cond_5f5
    sget-object v13, Lcom/bbm/util/n;->sameMonthTable:[I

    aget v3, v13, v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v13, 0xc

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v13, v14

    const/4 v5, 0x1

    aput-object v10, v13, v5

    const/4 v5, 0x2

    aput-object v16, v13, v5

    const/4 v5, 0x3

    aput-object v20, v13, v5

    const/4 v5, 0x4

    aput-object v7, v13, v5

    const/4 v5, 0x5

    aput-object v4, v13, v5

    const/4 v4, 0x6

    aput-object v8, v13, v4

    const/4 v4, 0x7

    aput-object v12, v13, v4

    const/16 v4, 0x8

    aput-object v11, v13, v4

    const/16 v4, 0x9

    aput-object v15, v13, v4

    const/16 v4, 0xa

    aput-object v9, v13, v4

    const/16 v4, 0xb

    aput-object v6, v13, v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v13}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    goto/16 :goto_172

    :cond_633
    and-int/lit8 v4, p5, 0x10

    if-eqz v4, :cond_67c

    const/4 v4, 0x1

    :goto_638
    if-nez v24, :cond_63f

    if-nez v4, :cond_63f

    if-nez v23, :cond_63f

    const/4 v4, 0x1

    :cond_63f
    const-string v6, ""

    if-eqz v24, :cond_715

    if-eqz v3, :cond_67e

    move-object v3, v7

    :goto_646
    const-string v6, ""

    const-string v7, ""

    if-eqz v4, :cond_6d6

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v23, :cond_6b1

    if-eqz v24, :cond_69e

    const-string v4, "time_wday_date"

    const-string v7, "string"

    const-string v8, "android"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_668
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v3, 0x1

    aput-object v5, v7, v3

    const/4 v3, 0x2

    aput-object v6, v7, v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    goto/16 :goto_172

    :cond_67c
    const/4 v4, 0x0

    goto :goto_638

    :cond_67e
    const-string v3, "time1_time2"

    const-string v6, "string"

    const-string v8, "android"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v6, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v15, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_646

    :cond_69e
    const-string v4, "wday_date"

    const-string v7, "string"

    const-string v8, "android"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_668

    :cond_6b1
    if-eqz v24, :cond_6c6

    const-string v4, "time_date"

    const-string v7, "string"

    const-string v8, "android"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_668

    :cond_6c6
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    goto/16 :goto_172

    :cond_6d6
    if-eqz v23, :cond_6ff

    if-eqz v24, :cond_6ef

    const-string v4, "time_wday"

    const-string v6, "string"

    const-string v8, "android"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v6, v7

    goto/16 :goto_668

    :cond_6ef
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    goto/16 :goto_172

    :cond_6ff
    if-eqz v24, :cond_711

    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    goto/16 :goto_172

    :cond_711
    move-object v4, v6

    move-object v6, v7

    goto/16 :goto_668

    :cond_715
    move-object v3, v6

    goto/16 :goto_646

    :cond_718
    move-object v6, v8

    move-object v9, v10

    goto/16 :goto_553

    :cond_71c
    move v14, v10

    goto/16 :goto_125

    :cond_71f
    move-object v6, v9

    goto/16 :goto_10f

    :cond_722
    move-object v15, v6

    goto/16 :goto_119
.end method

.method private static a(Landroid/text/format/Time;Ljava/util/Calendar;)V
    .registers 5

    const/16 v2, 0x10

    const/4 v0, 0x1

    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Landroid/text/format/Time;->hour:I

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Landroid/text/format/Time;->minute:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Landroid/text/format/Time;->month:I

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Landroid/text/format/Time;->monthDay:I

    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Landroid/text/format/Time;->second:I

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/text/format/Time;->weekDay:I

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Landroid/text/format/Time;->year:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Landroid/text/format/Time;->yearDay:I

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eqz v1, :cond_60

    :goto_45
    iput v0, p0, Landroid/text/format/Time;->isDst:I

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    return-void

    :cond_60
    const/4 v0, 0x0

    goto :goto_45
.end method
