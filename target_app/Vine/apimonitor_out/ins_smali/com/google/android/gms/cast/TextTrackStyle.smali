.class public final Lcom/google/android/gms/cast/TextTrackStyle;
.super Ljava/lang/Object;
.field public static final COLOR_UNSPECIFIED:I = 0x0
.field public static final DEFAULT_FONT_SCALE:F = 1.0f
.field public static final EDGE_TYPE_DEPRESSED:I = 0x4
.field public static final EDGE_TYPE_DROP_SHADOW:I = 0x2
.field public static final EDGE_TYPE_NONE:I = 0x0
.field public static final EDGE_TYPE_OUTLINE:I = 0x1
.field public static final EDGE_TYPE_RAISED:I = 0x3
.field public static final EDGE_TYPE_UNSPECIFIED:I = -0x1
.field public static final FONT_FAMILY_CASUAL:I = 0x4
.field public static final FONT_FAMILY_CURSIVE:I = 0x5
.field public static final FONT_FAMILY_MONOSPACED_SANS_SERIF:I = 0x1
.field public static final FONT_FAMILY_MONOSPACED_SERIF:I = 0x3
.field public static final FONT_FAMILY_SANS_SERIF:I = 0x0
.field public static final FONT_FAMILY_SERIF:I = 0x2
.field public static final FONT_FAMILY_SMALL_CAPITALS:I = 0x6
.field public static final FONT_FAMILY_UNSPECIFIED:I = -0x1
.field public static final FONT_STYLE_BOLD:I = 0x1
.field public static final FONT_STYLE_BOLD_ITALIC:I = 0x3
.field public static final FONT_STYLE_ITALIC:I = 0x2
.field public static final FONT_STYLE_NORMAL:I = 0x0
.field public static final FONT_STYLE_UNSPECIFIED:I = -0x1
.field public static final WINDOW_TYPE_NONE:I = 0x0
.field public static final WINDOW_TYPE_NORMAL:I = 0x1
.field public static final WINDOW_TYPE_ROUNDED:I = 0x2
.field public static final WINDOW_TYPE_UNSPECIFIED:I = -0x1
.field private Ax:Lorg/json/JSONObject;
.field private Bp:F
.field private Bq:I
.field private Br:I
.field private Bs:I
.field private Bt:I
.field private Bu:I
.field private Bv:I
.field private Bw:Ljava/lang/String;
.field private Bx:I
.field private By:I
.field private ta:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-direct {p0}, Lcom/google/android/gms/cast/TextTrackStyle;->clear()V
return-void
.end method
.method private ah(Ljava/lang/String;)I
.registers 8
const/4 v0, 0x0
if-eqz p1, :cond_48
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
const/16 v2, 0x9
if-ne v1, v2, :cond_48
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v1
const/16 v2, 0x23
if-ne v1, v2, :cond_48
const/4 v1, 0x1
const/4 v2, 0x3
:try_start_15
invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
const/16 v2, 0x10
invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
move-result v1
const/4 v2, 0x3
const/4 v3, 0x5
invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
const/16 v3, 0x10
invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
move-result v2
const/4 v3, 0x5
const/4 v4, 0x7
invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
const/16 v4, 0x10
invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
move-result v3
const/4 v4, 0x7
const/16 v5, 0x9
invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v4
const/16 v5, 0x10
invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
move-result v4
invoke-static {v4, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I
:try_end_47
.catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_47} :catch_49
move-result v0
:cond_48
:goto_48
return v0
:catch_49
move-exception v1
goto :goto_48
.end method
.method private clear()V
.registers 5
const/4 v3, 0x0
const/4 v2, -0x1
const/4 v1, 0x0
const/high16 v0, 0x3f80
iput v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bp:F
iput v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bq:I
iput v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->ta:I
iput v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Br:I
iput v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bs:I
iput v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bt:I
iput v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bu:I
iput v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bv:I
iput-object v3, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bw:Ljava/lang/String;
iput v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bx:I
iput v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->By:I
iput-object v3, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Ax:Lorg/json/JSONObject;
return-void
.end method
.method public static fromSystemSettings(Landroid/content/Context;)Lcom/google/android/gms/cast/TextTrackStyle;
.registers 7
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v1, Lcom/google/android/gms/cast/TextTrackStyle;
invoke-direct {v1}, Lcom/google/android/gms/cast/TextTrackStyle;-><init>()V
invoke-static {}, Lcom/google/android/gms/internal/iq;->gd()Z
move-result v0
if-nez v0, :cond_10
move-object v0, v1
:goto_f
return-object v0
:cond_10
const-string v0, "captioning"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/accessibility/CaptioningManager;
invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F
move-result v2
invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/TextTrackStyle;->setFontScale(F)V
invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;
move-result-object v0
iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I
invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/TextTrackStyle;->setBackgroundColor(I)V
iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I
invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/TextTrackStyle;->setForegroundColor(I)V
iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I
packed-switch v2, :pswitch_data_92
invoke-virtual {v1, v3}, Lcom/google/android/gms/cast/TextTrackStyle;->setEdgeType(I)V
:goto_35
iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I
invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/TextTrackStyle;->setEdgeColor(I)V
invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;
move-result-object v0
if-eqz v0, :cond_5b
sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;
invoke-virtual {v2, v0}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_65
invoke-virtual {v1, v4}, Lcom/google/android/gms/cast/TextTrackStyle;->setFontGenericFamily(I)V
:goto_4b
invoke-virtual {v0}, Landroid/graphics/Typeface;->isBold()Z
move-result v2
invoke-virtual {v0}, Landroid/graphics/Typeface;->isItalic()Z
move-result v0
if-eqz v2, :cond_81
if-eqz v0, :cond_81
const/4 v0, 0x3
invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/TextTrackStyle;->setFontStyle(I)V
:goto_5b
:cond_5b
move-object v0, v1
goto :goto_f
:pswitch_5d
invoke-virtual {v1, v4}, Lcom/google/android/gms/cast/TextTrackStyle;->setEdgeType(I)V
goto :goto_35
:pswitch_61
invoke-virtual {v1, v5}, Lcom/google/android/gms/cast/TextTrackStyle;->setEdgeType(I)V
goto :goto_35
:cond_65
sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;
invoke-virtual {v2, v0}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_71
invoke-virtual {v1, v3}, Lcom/google/android/gms/cast/TextTrackStyle;->setFontGenericFamily(I)V
goto :goto_4b
:cond_71
sget-object v2, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;
invoke-virtual {v2, v0}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_7d
invoke-virtual {v1, v5}, Lcom/google/android/gms/cast/TextTrackStyle;->setFontGenericFamily(I)V
goto :goto_4b
:cond_7d
invoke-virtual {v1, v3}, Lcom/google/android/gms/cast/TextTrackStyle;->setFontGenericFamily(I)V
goto :goto_4b
:cond_81
if-eqz v2, :cond_87
invoke-virtual {v1, v4}, Lcom/google/android/gms/cast/TextTrackStyle;->setFontStyle(I)V
goto :goto_5b
:cond_87
if-eqz v0, :cond_8d
invoke-virtual {v1, v5}, Lcom/google/android/gms/cast/TextTrackStyle;->setFontStyle(I)V
goto :goto_5b
:cond_8d
invoke-virtual {v1, v3}, Lcom/google/android/gms/cast/TextTrackStyle;->setFontStyle(I)V
goto :goto_5b
nop
:pswitch_data_92
.packed-switch 0x1
:pswitch_5d
:pswitch_61
.end packed-switch
.end method
.method private o(I)Ljava/lang/String;
.registers 6
const-string v0, "#%02X%02X%02X%02X"
const/4 v1, 0x4
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p1}, Landroid/graphics/Color;->red(I)I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
invoke-static {p1}, Landroid/graphics/Color;->green(I)I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x2
invoke-static {p1}, Landroid/graphics/Color;->blue(I)I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x3
invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public b(Lorg/json/JSONObject;)V
.registers 10
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x1
const/4 v4, 0x2
const/4 v3, 0x0
invoke-direct {p0}, Lcom/google/android/gms/cast/TextTrackStyle;->clear()V
const-string v0, "fontScale"
const-wide/high16 v1, 0x3ff0
invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D
move-result-wide v0
double-to-float v0, v0
iput v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bp:F
const-string v0, "foregroundColor"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/google/android/gms/cast/TextTrackStyle;->ah(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bq:I
const-string v0, "backgroundColor"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/google/android/gms/cast/TextTrackStyle;->ah(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->ta:I
const-string v0, "edgeType"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_43
const-string v0, "edgeType"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "NONE"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_c1
iput v3, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Br:I
:goto_43
:cond_43
const-string v0, "edgeColor"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/google/android/gms/cast/TextTrackStyle;->ah(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bs:I
const-string v0, "windowType"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_67
const-string v0, "windowType"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "NONE"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_f1
iput v3, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bt:I
:cond_67
:goto_67
const-string v0, "windowColor"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/google/android/gms/cast/TextTrackStyle;->ah(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bu:I
iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bt:I
if-ne v0, v4, :cond_7f
const-string v0, "windowRoundedCornerRadius"
invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bv:I
:cond_7f
const-string v0, "fontFamily"
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bw:Ljava/lang/String;
const-string v0, "fontGenericFamily"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_a0
const-string v0, "fontGenericFamily"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "SANS_SERIF"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_109
iput v3, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bx:I
:goto_a0
:cond_a0
const-string v0, "fontStyle"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_b8
const-string v0, "fontStyle"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "NORMAL"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_151
iput v3, p0, Lcom/google/android/gms/cast/TextTrackStyle;->By:I
:cond_b8
:goto_b8
const-string v0, "customData"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Ax:Lorg/json/JSONObject;
return-void
:cond_c1
const-string v1, "OUTLINE"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_cd
iput v5, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Br:I
goto/16 :goto_43
:cond_cd
const-string v1, "DROP_SHADOW"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_d9
iput v4, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Br:I
goto/16 :goto_43
:cond_d9
const-string v1, "RAISED"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_e5
iput v6, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Br:I
goto/16 :goto_43
:cond_e5
const-string v1, "DEPRESSED"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_43
iput v7, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Br:I
goto/16 :goto_43
:cond_f1
const-string v1, "NORMAL"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_fd
iput v5, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bt:I
goto/16 :goto_67
:cond_fd
const-string v1, "ROUNDED_CORNERS"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_67
iput v4, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bt:I
goto/16 :goto_67
:cond_109
const-string v1, "MONOSPACED_SANS_SERIF"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_114
iput v5, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bx:I
goto :goto_a0
:cond_114
const-string v1, "SERIF"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_11f
iput v4, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bx:I
goto :goto_a0
:cond_11f
const-string v1, "MONOSPACED_SERIF"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_12b
iput v6, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bx:I
goto/16 :goto_a0
:cond_12b
const-string v1, "CASUAL"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_137
iput v7, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bx:I
goto/16 :goto_a0
:cond_137
const-string v1, "CURSIVE"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_144
const/4 v0, 0x5
iput v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bx:I
goto/16 :goto_a0
:cond_144
const-string v1, "SMALL_CAPITALS"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_a0
const/4 v0, 0x6
iput v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bx:I
goto/16 :goto_a0
:cond_151
const-string v1, "BOLD"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_15d
iput v5, p0, Lcom/google/android/gms/cast/TextTrackStyle;->By:I
goto/16 :goto_b8
:cond_15d
const-string v1, "ITALIC"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_169
iput v4, p0, Lcom/google/android/gms/cast/TextTrackStyle;->By:I
goto/16 :goto_b8
:cond_169
const-string v1, "BOLD_ITALIC"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_b8
iput v6, p0, Lcom/google/android/gms/cast/TextTrackStyle;->By:I
goto/16 :goto_b8
.end method
.method public dU()Lorg/json/JSONObject;
.registers 5
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
:try_start_5
const-string v1, "fontScale"
iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bp:F
float-to-double v2, v2
invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bq:I
if-eqz v1, :cond_1c
const-string v1, "foregroundColor"
iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bq:I
invoke-direct {p0, v2}, Lcom/google/android/gms/cast/TextTrackStyle;->o(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_1c
iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->ta:I
if-eqz v1, :cond_2b
const-string v1, "backgroundColor"
iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->ta:I
invoke-direct {p0, v2}, Lcom/google/android/gms/cast/TextTrackStyle;->o(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_2b
iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Br:I
packed-switch v1, :pswitch_data_120
:goto_30
iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bs:I
if-eqz v1, :cond_3f
const-string v1, "edgeColor"
iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bs:I
invoke-direct {p0, v2}, Lcom/google/android/gms/cast/TextTrackStyle;->o(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_3f
iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bt:I
packed-switch v1, :pswitch_data_12e
:goto_44
iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bu:I
if-eqz v1, :cond_53
const-string v1, "windowColor"
iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bu:I
invoke-direct {p0, v2}, Lcom/google/android/gms/cast/TextTrackStyle;->o(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_53
iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bt:I
const/4 v2, 0x2
if-ne v1, v2, :cond_5f
const-string v1, "windowRoundedCornerRadius"
iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bv:I
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
:cond_5f
iget-object v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bw:Ljava/lang/String;
if-eqz v1, :cond_6a
const-string v1, "fontFamily"
iget-object v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bw:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_6a
iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bx:I
packed-switch v1, :pswitch_data_138
:goto_6f
iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->By:I
packed-switch v1, :pswitch_data_14a
:goto_74
iget-object v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Ax:Lorg/json/JSONObject;
if-eqz v1, :cond_7f
const-string v1, "customData"
iget-object v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Ax:Lorg/json/JSONObject;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:goto_7f
:cond_7f
return-object v0
:pswitch_80
const-string v1, "edgeType"
const-string v2, "NONE"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_30
:catch_88
move-exception v1
goto :goto_7f
:pswitch_8a
const-string v1, "edgeType"
const-string v2, "OUTLINE"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_30
:pswitch_92
const-string v1, "edgeType"
const-string v2, "DROP_SHADOW"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_30
:pswitch_9a
const-string v1, "edgeType"
const-string v2, "RAISED"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_30
:pswitch_a2
const-string v1, "edgeType"
const-string v2, "DEPRESSED"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_30
:pswitch_aa
const-string v1, "windowType"
const-string v2, "NONE"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_44
:pswitch_b2
const-string v1, "windowType"
const-string v2, "NORMAL"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_44
:pswitch_ba
const-string v1, "windowType"
const-string v2, "ROUNDED_CORNERS"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_44
:pswitch_c2
const-string v1, "fontGenericFamily"
const-string v2, "SANS_SERIF"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_6f
:pswitch_ca
const-string v1, "fontGenericFamily"
const-string v2, "MONOSPACED_SANS_SERIF"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_6f
:pswitch_d2
const-string v1, "fontGenericFamily"
const-string v2, "SERIF"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_6f
:pswitch_da
const-string v1, "fontGenericFamily"
const-string v2, "MONOSPACED_SERIF"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_6f
:pswitch_e2
const-string v1, "fontGenericFamily"
const-string v2, "CASUAL"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_6f
:pswitch_ea
const-string v1, "fontGenericFamily"
const-string v2, "CURSIVE"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto/16 :goto_6f
:pswitch_f3
const-string v1, "fontGenericFamily"
const-string v2, "SMALL_CAPITALS"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto/16 :goto_6f
:pswitch_fc
const-string v1, "fontStyle"
const-string v2, "NORMAL"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto/16 :goto_74
:pswitch_105
const-string v1, "fontStyle"
const-string v2, "BOLD"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto/16 :goto_74
:pswitch_10e
const-string v1, "fontStyle"
const-string v2, "ITALIC"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto/16 :goto_74
:pswitch_117
const-string v1, "fontStyle"
const-string v2, "BOLD_ITALIC"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_11e
.catch Lorg/json/JSONException; {:try_start_5 .. :try_end_11e} :catch_88
goto/16 :goto_74
:pswitch_data_12e
.packed-switch 0x0
:pswitch_aa
:pswitch_b2
:pswitch_ba
.end packed-switch
:pswitch_data_14a
.packed-switch 0x0
:pswitch_fc
:pswitch_105
:pswitch_10e
:pswitch_117
.end packed-switch
:pswitch_data_138
.packed-switch 0x0
:pswitch_c2
:pswitch_ca
:pswitch_d2
:pswitch_da
:pswitch_e2
:pswitch_ea
:pswitch_f3
.end packed-switch
:pswitch_data_120
.packed-switch 0x0
:pswitch_80
:pswitch_8a
:pswitch_92
:pswitch_9a
:pswitch_a2
.end packed-switch
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v1, 0x1
const/4 v2, 0x0
if-ne p0, p1, :cond_6
move v2, v1
:goto_5
:cond_5
return v2
:cond_6
instance-of v0, p1, Lcom/google/android/gms/cast/TextTrackStyle;
if-eqz v0, :cond_5
check-cast p1, Lcom/google/android/gms/cast/TextTrackStyle;
iget-object v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Ax:Lorg/json/JSONObject;
if-nez v0, :cond_6e
move v0, v1
:goto_11
iget-object v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->Ax:Lorg/json/JSONObject;
if-nez v3, :cond_70
move v3, v1
:goto_16
if-ne v0, v3, :cond_5
iget-object v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Ax:Lorg/json/JSONObject;
if-eqz v0, :cond_2a
iget-object v0, p1, Lcom/google/android/gms/cast/TextTrackStyle;->Ax:Lorg/json/JSONObject;
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Ax:Lorg/json/JSONObject;
iget-object v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->Ax:Lorg/json/JSONObject;
invoke-static {v0, v3}, Lcom/google/android/gms/internal/io;->d(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5
:cond_2a
iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bp:F
iget v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->Bp:F
cmpl-float v0, v0, v3
if-nez v0, :cond_72
iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bq:I
iget v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->Bq:I
if-ne v0, v3, :cond_72
iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->ta:I
iget v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->ta:I
if-ne v0, v3, :cond_72
iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Br:I
iget v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->Br:I
if-ne v0, v3, :cond_72
iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bs:I
iget v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->Bs:I
if-ne v0, v3, :cond_72
iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bt:I
iget v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->Bt:I
if-ne v0, v3, :cond_72
iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bv:I
iget v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->Bv:I
if-ne v0, v3, :cond_72
iget-object v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bw:Ljava/lang/String;
iget-object v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->Bw:Ljava/lang/String;
invoke-static {v0, v3}, Lcom/google/android/gms/internal/gj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_72
iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bx:I
iget v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->Bx:I
if-ne v0, v3, :cond_72
iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->By:I
iget v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->By:I
if-ne v0, v3, :cond_72
:goto_6c
move v2, v1
goto :goto_5
:cond_6e
move v0, v2
goto :goto_11
:cond_70
move v3, v2
goto :goto_16
:cond_72
move v1, v2
goto :goto_6c
.end method
.method public getBackgroundColor()I
.registers 2
iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->ta:I
return v0
.end method
.method public getCustomData()Lorg/json/JSONObject;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Ax:Lorg/json/JSONObject;
return-object v0
.end method
.method public getEdgeColor()I
.registers 2
iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bs:I
return v0
.end method
.method public getEdgeType()I
.registers 2
iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Br:I
return v0
.end method
.method public getFontFamily()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bw:Ljava/lang/String;
return-object v0
.end method
.method public getFontGenericFamily()I
.registers 2
iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bx:I
return v0
.end method
.method public getFontScale()F
.registers 2
iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bp:F
return v0
.end method
.method public getFontStyle()I
.registers 2
iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->By:I
return v0
.end method
.method public getForegroundColor()I
.registers 2
iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bq:I
return v0
.end method
.method public getWindowColor()I
.registers 2
iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bu:I
return v0
.end method
.method public getWindowCornerRadius()I
.registers 2
iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bv:I
return v0
.end method
.method public getWindowType()I
.registers 2
iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bt:I
return v0
.end method
.method public hashCode()I
.registers 4
const/16 v0, 0xc
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bp:F
invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bq:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x2
iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->ta:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x3
iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Br:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x4
iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bs:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x5
iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bt:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x6
iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bu:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x7
iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bv:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0x8
iget-object v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bw:Ljava/lang/String;
aput-object v2, v0, v1
const/16 v1, 0x9
iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bx:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0xa
iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->By:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0xb
iget-object v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Ax:Lorg/json/JSONObject;
aput-object v2, v0, v1
invoke-static {v0}, Lcom/google/android/gms/internal/hl;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public setBackgroundColor(I)V
.registers 2
iput p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->ta:I
return-void
.end method
.method public setCustomData(Lorg/json/JSONObject;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Ax:Lorg/json/JSONObject;
return-void
.end method
.method public setEdgeColor(I)V
.registers 2
iput p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bs:I
return-void
.end method
.method public setEdgeType(I)V
.registers 4
if-ltz p1, :cond_5
const/4 v0, 0x4
if-le p1, v0, :cond_d
:cond_5
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "invalid edgeType"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Br:I
return-void
.end method
.method public setFontFamily(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bw:Ljava/lang/String;
return-void
.end method
.method public setFontGenericFamily(I)V
.registers 4
if-ltz p1, :cond_5
const/4 v0, 0x6
if-le p1, v0, :cond_d
:cond_5
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "invalid fontGenericFamily"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bx:I
return-void
.end method
.method public setFontScale(F)V
.registers 2
iput p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bp:F
return-void
.end method
.method public setFontStyle(I)V
.registers 4
if-ltz p1, :cond_5
const/4 v0, 0x3
if-le p1, v0, :cond_d
:cond_5
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "invalid fontStyle"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->By:I
return-void
.end method
.method public setForegroundColor(I)V
.registers 2
iput p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bq:I
return-void
.end method
.method public setWindowColor(I)V
.registers 2
iput p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bu:I
return-void
.end method
.method public setWindowCornerRadius(I)V
.registers 4
if-gez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "invalid windowCornerRadius"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iput p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bv:I
return-void
.end method
.method public setWindowType(I)V
.registers 4
if-ltz p1, :cond_5
const/4 v0, 0x2
if-le p1, v0, :cond_d
:cond_5
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "invalid windowType"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bt:I
return-void
.end method