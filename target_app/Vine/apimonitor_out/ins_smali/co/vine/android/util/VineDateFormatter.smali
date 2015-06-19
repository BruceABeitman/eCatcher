.class public Lco/vine/android/util/VineDateFormatter;
.super Ljava/lang/Object;
.source "VineDateFormatter.java"
.field private final mDateFormatLong:Ljava/text/SimpleDateFormat;
.field private final mDateFormatShort:Ljava/text/SimpleDateFormat;
.field private final mDateSectionSpans:Ljava/util/HashSet;
.field private final mDateTimePlacerPart1:Ljava/lang/String;
.field private final mIsDateBeforeTime:Z
.field private mStartOfToday:Ljava/util/Calendar;
.field private mStartOfYesterday:J
.field private final mTimeFormat:Ljava/text/SimpleDateFormat;
.field private final mTimeSectionSpans:Ljava/util/HashSet;
.field private final mYesterday:Ljava/lang/String;
.method public constructor <init>(Landroid/content/res/Resources;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v3, Ljava/text/SimpleDateFormat;
const v4, 0x7f0e0283
invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
iput-object v3, p0, Lco/vine/android/util/VineDateFormatter;->mTimeFormat:Ljava/text/SimpleDateFormat;
const v3, 0x7f0e0277
invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
const-string v3, "%1$s"
invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
const-string v3, "%2$s"
invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-ge v1, v2, :cond_67
const/4 v3, 0x1
:goto_27
iput-boolean v3, p0, Lco/vine/android/util/VineDateFormatter;->mIsDateBeforeTime:Z
iget-boolean v3, p0, Lco/vine/android/util/VineDateFormatter;->mIsDateBeforeTime:Z
if-eqz v3, :cond_69
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lco/vine/android/util/VineDateFormatter;->mDateTimePlacerPart1:Ljava/lang/String;
:goto_33
new-instance v3, Ljava/text/SimpleDateFormat;
const v4, 0x7f0e00a9
invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
iput-object v3, p0, Lco/vine/android/util/VineDateFormatter;->mDateFormatLong:Ljava/text/SimpleDateFormat;
new-instance v3, Ljava/text/SimpleDateFormat;
const v4, 0x7f0e00aa
invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
iput-object v3, p0, Lco/vine/android/util/VineDateFormatter;->mDateFormatShort:Ljava/text/SimpleDateFormat;
new-instance v3, Ljava/util/HashSet;
invoke-direct {v3}, Ljava/util/HashSet;-><init>()V
iput-object v3, p0, Lco/vine/android/util/VineDateFormatter;->mDateSectionSpans:Ljava/util/HashSet;
new-instance v3, Ljava/util/HashSet;
invoke-direct {v3}, Ljava/util/HashSet;-><init>()V
iput-object v3, p0, Lco/vine/android/util/VineDateFormatter;->mTimeSectionSpans:Ljava/util/HashSet;
const v3, 0x7f0e0289
invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lco/vine/android/util/VineDateFormatter;->mYesterday:Ljava/lang/String;
return-void
:cond_67
const/4 v3, 0x0
goto :goto_27
:cond_69
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lco/vine/android/util/VineDateFormatter;->mDateTimePlacerPart1:Ljava/lang/String;
goto :goto_33
.end method
.method public addSpanForDateSection(Landroid/text/style/TypefaceSpan;)V
.registers 3
iget-object v0, p0, Lco/vine/android/util/VineDateFormatter;->mDateSectionSpans:Ljava/util/HashSet;
invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public addSpanForTimeSection(Landroid/text/style/TypefaceSpan;)V
.registers 3
iget-object v0, p0, Lco/vine/android/util/VineDateFormatter;->mTimeSectionSpans:Ljava/util/HashSet;
invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public format(J)Ljava/lang/CharSequence;
.registers 15
new-instance v1, Ljava/util/Date;
invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V
invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
move-result-object v0
invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V
iget-object v9, p0, Lco/vine/android/util/VineDateFormatter;->mStartOfToday:Ljava/util/Calendar;
invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J
move-result-wide v9
cmp-long v9, p1, v9
if-lez v9, :cond_1d
iget-object v9, p0, Lco/vine/android/util/VineDateFormatter;->mTimeFormat:Ljava/text/SimpleDateFormat;
invoke-virtual {v9, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v7
:cond_1c
return-object v7
:cond_1d
new-instance v7, Landroid/text/SpannableStringBuilder;
invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V
iget-boolean v9, p0, Lco/vine/android/util/VineDateFormatter;->mIsDateBeforeTime:Z
if-eqz v9, :cond_ad
iget-wide v9, p0, Lco/vine/android/util/VineDateFormatter;->mStartOfYesterday:J
cmp-long v9, p1, v9
if-lez v9, :cond_63
iget-object v9, p0, Lco/vine/android/util/VineDateFormatter;->mDateTimePlacerPart1:Ljava/lang/String;
const-string v10, "%1$s"
iget-object v11, p0, Lco/vine/android/util/VineDateFormatter;->mYesterday:Ljava/lang/String;
invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v9
invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
:goto_39
invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I
move-result v3
iget-object v9, p0, Lco/vine/android/util/VineDateFormatter;->mTimeFormat:Ljava/text/SimpleDateFormat;
invoke-virtual {v9, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v9
invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I
move-result v4
iget-object v9, p0, Lco/vine/android/util/VineDateFormatter;->mDateSectionSpans:Ljava/util/HashSet;
invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_50
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v9
if-eqz v9, :cond_95
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Landroid/text/style/TypefaceSpan;
const/4 v9, 0x0
const/16 v10, 0x21
invoke-static {v7, v6, v9, v3, v10}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
goto :goto_50
:cond_63
const/4 v9, 0x1
invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I
move-result v9
iget-object v10, p0, Lco/vine/android/util/VineDateFormatter;->mStartOfToday:Ljava/util/Calendar;
const/4 v11, 0x1
invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I
move-result v10
if-ne v9, v10, :cond_83
iget-object v9, p0, Lco/vine/android/util/VineDateFormatter;->mDateTimePlacerPart1:Ljava/lang/String;
const-string v10, "%1$s"
iget-object v11, p0, Lco/vine/android/util/VineDateFormatter;->mDateFormatShort:Ljava/text/SimpleDateFormat;
invoke-virtual {v11, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v11
invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v9
invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
goto :goto_39
:cond_83
iget-object v9, p0, Lco/vine/android/util/VineDateFormatter;->mDateTimePlacerPart1:Ljava/lang/String;
const-string v10, "%1$s"
iget-object v11, p0, Lco/vine/android/util/VineDateFormatter;->mDateFormatLong:Ljava/text/SimpleDateFormat;
invoke-virtual {v11, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v11
invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v9
invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
goto :goto_39
:cond_95
iget-object v9, p0, Lco/vine/android/util/VineDateFormatter;->mTimeSectionSpans:Ljava/util/HashSet;
invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_9b
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v9
if-eqz v9, :cond_1c
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Landroid/text/style/TypefaceSpan;
const/16 v9, 0x21
invoke-static {v7, v6, v3, v4, v9}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
goto :goto_9b
:cond_ad
iget-object v9, p0, Lco/vine/android/util/VineDateFormatter;->mTimeFormat:Ljava/text/SimpleDateFormat;
invoke-virtual {v9, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v9
invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I
move-result v8
iget-wide v9, p0, Lco/vine/android/util/VineDateFormatter;->mStartOfYesterday:J
cmp-long v9, p1, v9
if-lez v9, :cond_e9
iget-object v9, p0, Lco/vine/android/util/VineDateFormatter;->mDateTimePlacerPart1:Ljava/lang/String;
const-string v10, "%1$s"
iget-object v11, p0, Lco/vine/android/util/VineDateFormatter;->mYesterday:Ljava/lang/String;
invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v9
invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
:goto_cd
invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I
move-result v2
iget-object v9, p0, Lco/vine/android/util/VineDateFormatter;->mDateSectionSpans:Ljava/util/HashSet;
invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_d7
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v9
if-eqz v9, :cond_11b
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Landroid/text/style/TypefaceSpan;
const/16 v9, 0x21
invoke-static {v7, v6, v8, v2, v9}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
goto :goto_d7
:cond_e9
const/4 v9, 0x1
invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I
move-result v9
iget-object v10, p0, Lco/vine/android/util/VineDateFormatter;->mStartOfToday:Ljava/util/Calendar;
const/4 v11, 0x1
invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I
move-result v10
if-ne v9, v10, :cond_109
iget-object v9, p0, Lco/vine/android/util/VineDateFormatter;->mDateTimePlacerPart1:Ljava/lang/String;
const-string v10, "%1$s"
iget-object v11, p0, Lco/vine/android/util/VineDateFormatter;->mDateFormatShort:Ljava/text/SimpleDateFormat;
invoke-virtual {v11, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v11
invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v9
invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
goto :goto_cd
:cond_109
iget-object v9, p0, Lco/vine/android/util/VineDateFormatter;->mDateTimePlacerPart1:Ljava/lang/String;
const-string v10, "%1$s"
iget-object v11, p0, Lco/vine/android/util/VineDateFormatter;->mDateFormatLong:Ljava/text/SimpleDateFormat;
invoke-virtual {v11, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v11
invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v9
invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
goto :goto_cd
:cond_11b
iget-object v9, p0, Lco/vine/android/util/VineDateFormatter;->mTimeSectionSpans:Ljava/util/HashSet;
invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_121
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v9
if-eqz v9, :cond_1c
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Landroid/text/style/TypefaceSpan;
const/4 v9, 0x0
const/16 v10, 0x21
invoke-static {v7, v6, v9, v8, v10}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
goto :goto_121
.end method
.method public refreshDates()V
.registers 5
invoke-static {}, Lco/vine/android/util/DateTimeUtil;->getStartOfDay()Ljava/util/Calendar;
move-result-object v0
iput-object v0, p0, Lco/vine/android/util/VineDateFormatter;->mStartOfToday:Ljava/util/Calendar;
iget-object v0, p0, Lco/vine/android/util/VineDateFormatter;->mStartOfToday:Ljava/util/Calendar;
invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J
move-result-wide v0
const-wide/32 v2, 0x5265c00
sub-long/2addr v0, v2
iput-wide v0, p0, Lco/vine/android/util/VineDateFormatter;->mStartOfYesterday:J
return-void
.end method