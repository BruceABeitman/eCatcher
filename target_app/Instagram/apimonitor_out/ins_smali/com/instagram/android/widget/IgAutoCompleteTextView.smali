.class public Lcom/instagram/android/widget/IgAutoCompleteTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "IgAutoCompleteTextView.java"
.field private static final a:Ljava/lang/Class;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/instagram/android/widget/IgAutoCompleteTextView;
sput-object v0, Lcom/instagram/android/widget/IgAutoCompleteTextView;->a:Ljava/lang/Class;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V
invoke-direct {p0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->a()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-direct {p0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->a()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-direct {p0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->a()V
return-void
.end method
.method private a(Landroid/text/Editable;)I
.registers 5
invoke-virtual {p0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->getSelectionEnd()I
move-result v0
add-int/lit8 v0, v0, -0x1
:goto_6
if-ltz v0, :cond_1c
invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C
move-result v1
const/16 v2, 0x40
if-eq v1, v2, :cond_18
invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C
move-result v1
const/16 v2, 0x23
if-ne v1, v2, :cond_19
:goto_18
:cond_18
return v0
:cond_19
add-int/lit8 v0, v0, -0x1
goto :goto_6
:cond_1c
const/4 v0, 0x0
goto :goto_18
.end method
.method private a()V
.registers 3
sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
const-string v1, "DROID3"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1e
sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
const-string v1, "DROID4"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1e
sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
const-string v1, "DROID BIONIC"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1f
:goto_1e
:cond_1e
return-void
:cond_1f
invoke-virtual {p0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->getInputType()I
move-result v0
const v1, -0x10001
and-int/2addr v0, v1
invoke-virtual {p0, v0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->setRawInputType(I)V
goto :goto_1e
.end method
.method private static a(I)Z
.registers 2
const/16 v0, 0x80
if-ge p0, v0, :cond_c
invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z
move-result v0
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public enoughToFilter()Z
.registers 7
const/4 v1, 0x1
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->getText()Landroid/text/Editable;
move-result-object v3
invoke-interface {v3}, Landroid/text/Editable;->length()I
move-result v2
if-gt v2, v1, :cond_d
:cond_c
:goto_c
return v0
:cond_d
invoke-virtual {p0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->getSelectionEnd()I
move-result v2
if-eqz v2, :cond_23
invoke-virtual {p0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->getSelectionEnd()I
move-result v2
add-int/lit8 v2, v2, -0x1
invoke-interface {v3, v2}, Landroid/text/Editable;->charAt(I)C
move-result v2
invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z
move-result v2
if-nez v2, :cond_c
:cond_23
invoke-virtual {p0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->getSelectionEnd()I
move-result v2
add-int/lit8 v2, v2, -0x1
:goto_29
if-ltz v2, :cond_c
invoke-interface {v3, v2}, Landroid/text/Editable;->charAt(I)C
move-result v4
const/16 v5, 0x40
if-eq v4, v5, :cond_3b
invoke-interface {v3, v2}, Landroid/text/Editable;->charAt(I)C
move-result v4
const/16 v5, 0x23
if-ne v4, v5, :cond_4b
:cond_3b
if-eqz v2, :cond_49
add-int/lit8 v4, v2, -0x1
invoke-interface {v3, v4}, Landroid/text/Editable;->charAt(I)C
move-result v4
invoke-static {v4}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->a(I)Z
move-result v4
if-nez v4, :cond_4b
:cond_49
move v0, v1
goto :goto_c
:cond_4b
add-int/lit8 v2, v2, -0x1
goto :goto_29
.end method
.method protected performFiltering(Ljava/lang/CharSequence;I)V
.registers 7
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->getSelectionEnd()I
move-result v0
add-int/lit8 v0, v0, -0x1
invoke-interface {p1}, Ljava/lang/CharSequence;->length()I
move-result v2
if-ge v0, v2, :cond_2d
:goto_11
if-ltz v0, :cond_39
invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C
move-result v2
const/16 v3, 0x40
if-eq v2, v3, :cond_39
invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C
move-result v2
const/16 v3, 0x23
if-eq v2, v3, :cond_39
add-int/lit8 v0, v0, -0x1
goto :goto_11
:cond_2d
sget-object v2, Lcom/instagram/android/widget/IgAutoCompleteTextView;->a:Ljava/lang/Class;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
invoke-interface {p1}, Ljava/lang/CharSequence;->length()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
:cond_39
invoke-virtual {v1}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-super {p0, v0, p2}, Landroid/widget/AutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V
return-void
.end method
.method protected replaceText(Ljava/lang/CharSequence;)V
.registers 7
invoke-virtual {p0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->getText()Landroid/text/Editable;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-interface {v0}, Landroid/text/Editable;->length()I
move-result v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V
invoke-direct {p0, v0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->a(Landroid/text/Editable;)I
move-result v2
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {p0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->getSelectionEnd()I
move-result v4
invoke-virtual {v3, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->getSelectionEnd()I
move-result v3
invoke-interface {v0}, Landroid/text/Editable;->length()I
move-result v4
if-eq v3, v4, :cond_34
invoke-virtual {p0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->getSelectionEnd()I
move-result v3
invoke-interface {v0, v3}, Landroid/text/Editable;->charAt(I)C
move-result v0
invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z
move-result v0
if-nez v0, :cond_5c
:cond_34
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, " "
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
:goto_4a
invoke-virtual {p0, v1}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {p0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->getText()Landroid/text/Editable;
move-result-object v0
invoke-interface {p1}, Ljava/lang/CharSequence;->length()I
move-result v1
add-int/2addr v1, v2
add-int/lit8 v1, v1, 0x1
invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V
return-void
:cond_5c
invoke-virtual {v1, v2, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;
goto :goto_4a
.end method