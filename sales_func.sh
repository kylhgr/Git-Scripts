
function get_salestax ()
{
        if test "$1" = ""
        then
                echo "You must supply a full expense amount."
                return
        else
                echo "Full expense amount:" $1
                nontax_amount=`echo "$1/1.15" | bc`
		tax_amount=`echo "$1-$nontax_amount" | bc`
                echo "Non tax amount:" $nontax_amount
                echo "Tax amount:" $tax_amount

                #Running echo $? after the schript returns the tax amount
                return $tax_amount
        fi
        echo "Operation completed successfully!"
}
