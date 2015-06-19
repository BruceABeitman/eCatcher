.class public Lcom/twidroid/ui/StringUrlSpan;
.super Landroid/text/SpannableString;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/twidroid/ui/StringUrlSpan$1;
invoke-direct {v0}, Lcom/twidroid/ui/StringUrlSpan$1;-><init>()V
sput-object v0, Lcom/twidroid/ui/StringUrlSpan;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
.registers 14
const/4 v10, 0x3
const/4 v9, 0x2
const/4 v1, 0x0
invoke-direct {p0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_6b
const-string v0, "\u00b6"
invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
move v0, v1
:goto_13
array-length v3, v2
if-ge v0, v3, :cond_6b
aget-object v3, v2, v0
const-string v4, ";"
invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v3
aget-object v4, v3, v1
invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
move-result v4
const/4 v5, 0x1
aget-object v5, v3, v5
invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
move-result v5
invoke-interface {p1, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;
move-result-object v6
array-length v7, v3
if-ne v7, v10, :cond_5a
aget-object v7, v3, v9
invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_4f
new-instance v6, Lcom/ubermedia/ui/MyURLSpan;
aget-object v3, v3, v9
invoke-direct {v6, v3}, Lcom/ubermedia/ui/MyURLSpan;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v6, v4, v5, v1}, Lcom/twidroid/ui/StringUrlSpan;->setSpan(Ljava/lang/Object;III)V
:goto_4c
:cond_4c
add-int/lit8 v0, v0, 0x1
goto :goto_13
:cond_4f
new-instance v7, Lcom/ubermedia/ui/StringSpanInfo;
aget-object v3, v3, v9
invoke-direct {v7, v3, v6}, Lcom/ubermedia/ui/StringSpanInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
invoke-virtual {p0, v7, v4, v5, v1}, Lcom/twidroid/ui/StringUrlSpan;->setSpan(Ljava/lang/Object;III)V
goto :goto_4c
:cond_5a
array-length v7, v3
const/4 v8, 0x4
if-ne v7, v8, :cond_4c
new-instance v7, Lcom/ubermedia/ui/StringSpanInfo;
aget-object v8, v3, v10
aget-object v3, v3, v9
invoke-direct {v7, v8, v6, v3}, Lcom/ubermedia/ui/StringSpanInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;)V
invoke-virtual {p0, v7, v4, v5, v1}, Lcom/twidroid/ui/StringUrlSpan;->setSpan(Ljava/lang/Object;III)V
goto :goto_4c
:cond_6b
return-void
.end method
.method public static a(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
.registers 6
const/4 v4, -0x1
const/4 v0, 0x0
:goto_2
invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I
move-result v1
if-ge v0, v1, :cond_14
invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const-string v2, "&"
invoke-virtual {v1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
move-result v1
if-ne v4, v1, :cond_15
:cond_14
return-object p0
:cond_15
invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const-string v2, ";"
invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
move-result v2
if-eq v4, v2, :cond_14
invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;
move-result-object v0
add-int/lit8 v3, v2, 0x1
invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
sget-object v3, Lcom/ubermedia/b/c;->b:Ljava/util/Map;
invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_3a
add-int/lit8 v2, v2, 0x1
invoke-virtual {p0, v1, v2, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
:cond_3a
add-int/lit8 v0, v1, 0x1
goto :goto_2
.end method
.method public static a(Landroid/text/Spannable;)Ljava/lang/String;
.registers 7
const/4 v1, 0x0
const/16 v5, 0x3b
invoke-interface {p0}, Landroid/text/Spannable;->length()I
move-result v0
const-class v2, Landroid/text/style/URLSpan;
invoke-interface {p0, v1, v0, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Landroid/text/style/URLSpan;
array-length v2, v0
if-nez v2, :cond_15
const-string v0, ""
:goto_14
return-object v0
:cond_15
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
move v2, v1
:goto_1b
array-length v1, v0
if-ge v2, v1, :cond_7a
invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I
move-result v1
if-eqz v1, :cond_29
const-string v1, "\u00b6"
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_29
aget-object v1, v0, v2
invoke-interface {p0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I
move-result v1
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
aget-object v1, v0, v2
invoke-interface {p0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I
move-result v1
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
aget-object v1, v0, v2
instance-of v1, v1, Lcom/ubermedia/ui/StringSpanInfo;
if-eqz v1, :cond_6d
aget-object v1, v0, v2
check-cast v1, Lcom/ubermedia/ui/StringSpanInfo;
iget-object v1, v1, Lcom/ubermedia/ui/StringSpanInfo;->b:Ljava/lang/String;
if-eqz v1, :cond_6d
aget-object v1, v0, v2
check-cast v1, Lcom/ubermedia/ui/StringSpanInfo;
iget-object v1, v1, Lcom/ubermedia/ui/StringSpanInfo;->b:Ljava/lang/String;
aget-object v4, v0, v2
invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_6d
aget-object v1, v0, v2
check-cast v1, Lcom/ubermedia/ui/StringSpanInfo;
iget-object v1, v1, Lcom/ubermedia/ui/StringSpanInfo;->b:Ljava/lang/String;
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_6d
aget-object v1, v0, v2
invoke-virtual {v1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_1b
:cond_7a
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_14
.end method
.method public static a(Lcom/twidroid/ui/StringUrlSpan;)Ljava/lang/String;
.registers 10
const/4 v3, 0x0
new-instance v5, Landroid/text/SpannableStringBuilder;
invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/ui/StringUrlSpan;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {p0}, Lcom/twidroid/ui/StringUrlSpan;->length()I
move-result v0
const-class v1, Landroid/text/style/URLSpan;
invoke-virtual {p0, v3, v0, v1}, Lcom/twidroid/ui/StringUrlSpan;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Landroid/text/style/URLSpan;
new-instance v1, Lcom/twidroid/ui/c;
invoke-direct {v1, p0}, Lcom/twidroid/ui/c;-><init>(Landroid/text/Spannable;)V
invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
move v2, v3
move v1, v3
:goto_20
array-length v4, v0
if-ge v2, v4, :cond_63
aget-object v4, v0, v2
invoke-virtual {p0, v4}, Lcom/twidroid/ui/StringUrlSpan;->getSpanStart(Ljava/lang/Object;)I
move-result v7
aget-object v4, v0, v2
invoke-virtual {p0, v4}, Lcom/twidroid/ui/StringUrlSpan;->getSpanEnd(Ljava/lang/Object;)I
move-result v4
if-le v7, v1, :cond_38
invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
:cond_38
aget-object v1, v0, v2
instance-of v1, v1, Lcom/ubermedia/ui/StringSpanInfo;
if-eqz v1, :cond_5c
aget-object v1, v0, v2
check-cast v1, Lcom/ubermedia/ui/StringSpanInfo;
invoke-virtual {v1}, Lcom/ubermedia/ui/StringSpanInfo;->getURL()Ljava/lang/String;
move-result-object v1
:goto_46
invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I
move-result v7
invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
aget-object v8, v0, v2
invoke-interface {v1}, Ljava/lang/CharSequence;->length()I
move-result v1
add-int/2addr v1, v7
invoke-virtual {v5, v8, v7, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
add-int/lit8 v1, v2, 0x1
move v2, v1
move v1, v4
goto :goto_20
:cond_5c
aget-object v1, v0, v2
invoke-virtual {v1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;
move-result-object v1
goto :goto_46
:cond_63
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v0
invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static b(Landroid/text/Spannable;)Lcom/twidroid/ui/StringUrlSpan;
.registers 10
const/4 v3, 0x0
new-instance v5, Landroid/text/SpannableStringBuilder;
invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V
invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v6
invoke-interface {p0}, Landroid/text/Spannable;->length()I
move-result v0
const-class v1, Landroid/text/style/URLSpan;
invoke-interface {p0, v3, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Landroid/text/style/URLSpan;
new-instance v1, Lcom/twidroid/ui/c;
invoke-direct {v1, p0}, Lcom/twidroid/ui/c;-><init>(Landroid/text/Spannable;)V
invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
move v2, v3
move v1, v3
:goto_20
array-length v4, v0
if-ge v2, v4, :cond_6b
aget-object v4, v0, v2
invoke-interface {p0, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I
move-result v7
aget-object v4, v0, v2
invoke-interface {p0, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I
move-result v4
if-le v7, v1, :cond_38
invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
:cond_38
aget-object v1, v0, v2
instance-of v1, v1, Lcom/ubermedia/ui/StringSpanInfo;
if-eqz v1, :cond_64
aget-object v1, v0, v2
check-cast v1, Lcom/ubermedia/ui/StringSpanInfo;
iget-object v1, v1, Lcom/ubermedia/ui/StringSpanInfo;->a:Ljava/lang/CharSequence;
:goto_44
invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I
move-result v7
invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v8
if-nez v8, :cond_5f
invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
aget-object v8, v0, v2
invoke-interface {v1}, Ljava/lang/CharSequence;->length()I
move-result v1
add-int/2addr v1, v7
invoke-virtual {v5, v8, v7, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
:cond_5f
add-int/lit8 v1, v2, 0x1
move v2, v1
move v1, v4
goto :goto_20
:cond_64
aget-object v1, v0, v2
invoke-virtual {v1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;
move-result-object v1
goto :goto_44
:cond_6b
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v0
invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
new-instance v0, Lcom/twidroid/ui/StringUrlSpan;
const/4 v1, 0x0
invoke-direct {v0, v5, v1}, Lcom/twidroid/ui/StringUrlSpan;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
return-object v0
.end method
.method public a()Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/twidroid/ui/StringUrlSpan;->a(Landroid/text/Spannable;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public b()[Landroid/text/style/URLSpan;
.registers 4
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/twidroid/ui/StringUrlSpan;->length()I
move-result v1
const-class v2, Landroid/text/style/URLSpan;
invoke-virtual {p0, v0, v1, v2}, Lcom/twidroid/ui/StringUrlSpan;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Landroid/text/style/URLSpan;
return-object v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
invoke-virtual {p0}, Lcom/twidroid/ui/StringUrlSpan;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/twidroid/ui/StringUrlSpan;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
return-void
.end method