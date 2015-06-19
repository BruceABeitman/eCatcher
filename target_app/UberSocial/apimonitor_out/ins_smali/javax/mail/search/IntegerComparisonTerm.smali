.class public abstract Ljavax/mail/search/IntegerComparisonTerm;
.super Ljavax/mail/search/ComparisonTerm;
.source "SourceFile"
.field private static final serialVersionUID:J = -0x60a39325f9860814L
.field protected number:I
.method protected constructor <init>(II)V
.registers 3
invoke-direct {p0}, Ljavax/mail/search/ComparisonTerm;-><init>()V
iput p1, p0, Ljavax/mail/search/IntegerComparisonTerm;->comparison:I
iput p2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 5
const/4 v1, 0x0
instance-of v0, p1, Ljavax/mail/search/IntegerComparisonTerm;
if-nez v0, :cond_7
move v0, v1
:goto_6
return v0
:cond_7
move-object v0, p1
check-cast v0, Ljavax/mail/search/IntegerComparisonTerm;
iget v0, v0, Ljavax/mail/search/IntegerComparisonTerm;->number:I
iget v2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I
if-ne v0, v2, :cond_18
invoke-super {p0, p1}, Ljavax/mail/search/ComparisonTerm;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_18
const/4 v0, 0x1
goto :goto_6
:cond_18
move v0, v1
goto :goto_6
.end method
.method public getComparison()I
.registers 2
iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->comparison:I
return v0
.end method
.method public getNumber()I
.registers 2
iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I
return v0
.end method
.method public hashCode()I
.registers 3
iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I
invoke-super {p0}, Ljavax/mail/search/ComparisonTerm;->hashCode()I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method protected match(I)Z
.registers 5
const/4 v0, 0x1
const/4 v1, 0x0
iget v2, p0, Ljavax/mail/search/IntegerComparisonTerm;->comparison:I
packed-switch v2, :pswitch_data_2e
move v0, v1
:goto_8
:cond_8
return v0
:pswitch_9
iget v2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I
if-le p1, v2, :cond_8
move v0, v1
goto :goto_8
:pswitch_f
iget v2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I
if-lt p1, v2, :cond_8
move v0, v1
goto :goto_8
:pswitch_15
iget v2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I
if-eq p1, v2, :cond_8
move v0, v1
goto :goto_8
:pswitch_1b
iget v2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I
if-ne p1, v2, :cond_8
move v0, v1
goto :goto_8
:pswitch_21
iget v2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I
if-gt p1, v2, :cond_8
move v0, v1
goto :goto_8
:pswitch_27
iget v2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I
if-ge p1, v2, :cond_8
move v0, v1
goto :goto_8
nop
:pswitch_data_2e
.packed-switch 0x1
:pswitch_9
:pswitch_f
:pswitch_15
:pswitch_1b
:pswitch_21
:pswitch_27
.end packed-switch
.end method