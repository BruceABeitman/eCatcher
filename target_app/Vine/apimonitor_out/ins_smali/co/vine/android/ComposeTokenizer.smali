.class public Lco/vine/android/ComposeTokenizer;
.super Ljava/lang/Object;
.source "ComposeTokenizer.java"
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
.field public static final TAGS_ADAPTER:Ljava/lang/String; = "tags_adapter"
.field public static final USERS_ADAPTER:Ljava/lang/String; = "users_adapter"
.field private static final mDelimiters:Ljava/util/HashSet;
.field private mCallback:Lco/vine/android/widget/PopupEditText$PopupEditTextListener;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/util/HashSet;
const/16 v1, 0x20
invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V
const/16 v1, 0x9
invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const/16 v1, 0xa
invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const/16 v1, 0x2e
invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const/16 v1, 0x21
invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const/16 v1, 0x3f
invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const/16 v1, 0x2c
invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const/16 v1, 0x3a
invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const/16 v1, 0x3b
invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const/16 v1, 0x27
invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const/16 v1, 0x22
invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const/16 v1, 0x60
invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const/16 v1, 0x2f
invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const/16 v1, 0x5c
invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const/16 v1, 0x2d
invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const/16 v1, 0x3d
invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const/16 v1, 0x2b
invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const/16 v1, 0x7e
invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const/16 v1, 0x24
invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const/16 v1, 0x25
invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const/16 v1, 0x5e
invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const/16 v1, 0x26
invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const/16 v1, 0x2a
invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const/16 v1, 0x28
invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const/16 v1, 0x29
invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const/16 v1, 0x5b
invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const/16 v1, 0x5d
invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const/16 v1, 0x7b
invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const/16 v1, 0x7d
invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const/16 v1, 0x3c
invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const/16 v1, 0x3e
invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const/16 v1, 0x7c
invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
sput-object v0, Lco/vine/android/ComposeTokenizer;->mDelimiters:Ljava/util/HashSet;
return-void
.end method
.method public constructor <init>(Lco/vine/android/widget/PopupEditText$PopupEditTextListener;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lco/vine/android/ComposeTokenizer;->mCallback:Lco/vine/android/widget/PopupEditText$PopupEditTextListener;
return-void
.end method
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
.registers 7
move v0, p2
invoke-interface {p1}, Ljava/lang/CharSequence;->length()I
move-result v1
:goto_5
if-ge v0, v1, :cond_1b
sget-object v2, Lco/vine/android/ComposeTokenizer;->mDelimiters:Ljava/util/HashSet;
invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C
move-result v3
invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_18
:goto_17
return v0
:cond_18
add-int/lit8 v0, v0, 0x1
goto :goto_5
:cond_1b
move v0, v1
goto :goto_17
.end method
.method public findTokenStart(Ljava/lang/CharSequence;I)I
.registers 12
const/16 v8, 0x40
const/16 v7, 0x23
const/4 v3, 0x1
const/4 v4, 0x0
if-gtz p2, :cond_9
:goto_8
:cond_8
return p2
:cond_9
move v1, p2
:cond_a
add-int/lit8 v1, v1, -0x1
invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C
move-result v0
if-lez v1, :cond_22
sget-object v5, Lco/vine/android/ComposeTokenizer;->mDelimiters:Ljava/util/HashSet;
invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_22
if-eq v0, v8, :cond_22
if-ne v0, v7, :cond_a
:cond_22
if-ne v0, v8, :cond_54
move v2, v3
:goto_25
if-ne v0, v7, :cond_56
:goto_27
if-nez v2, :cond_2b
if-eqz v3, :cond_8
:cond_2b
if-eqz v1, :cond_49
sget-object v4, Lco/vine/android/ComposeTokenizer;->mDelimiters:Ljava/util/HashSet;
add-int/lit8 v5, v1, -0x1
invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C
move-result v5
invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_49
add-int/lit8 v4, v1, -0x1
invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C
move-result v4
const/16 v5, 0x20
if-ne v4, v5, :cond_8
:cond_49
if-eqz v2, :cond_58
iget-object v4, p0, Lco/vine/android/ComposeTokenizer;->mCallback:Lco/vine/android/widget/PopupEditText$PopupEditTextListener;
const-string v5, "users_adapter"
invoke-interface {v4, v5}, Lco/vine/android/widget/PopupEditText$PopupEditTextListener;->setPopupAdapter(Ljava/lang/String;)V
:goto_52
:cond_52
move p2, v1
goto :goto_8
:cond_54
move v2, v4
goto :goto_25
:cond_56
move v3, v4
goto :goto_27
:cond_58
if-eqz v3, :cond_52
iget-object v4, p0, Lco/vine/android/ComposeTokenizer;->mCallback:Lco/vine/android/widget/PopupEditText$PopupEditTextListener;
const-string v5, "tags_adapter"
invoke-interface {v4, v5}, Lco/vine/android/widget/PopupEditText$PopupEditTextListener;->setPopupAdapter(Ljava/lang/String;)V
goto :goto_52
.end method
.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
.registers 8
const/4 v1, 0x0
instance-of v0, p1, Landroid/text/Spanned;
if-eqz v0, :cond_2b
new-instance v4, Landroid/text/SpannableString;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, " "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
move-object v0, p1
check-cast v0, Landroid/text/Spanned;
invoke-interface {p1}, Ljava/lang/CharSequence;->length()I
move-result v2
const-class v3, Ljava/lang/Object;
move v5, v1
invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
:goto_2a
return-object v4
:cond_2b
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
goto :goto_2a
.end method