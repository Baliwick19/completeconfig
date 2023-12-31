local helpers = require('personal.luasnip-helper-funcs')
local get_visual = helpers.get_visual


local line_begin = require("luasnip.extras.expand_conditions").line_begin

-- Return snippet tables
return
{
    -- GENERIC ENVIRONMENT
    s({trig="main", snippetType="autosnippet"},
      fmta(
        [[
        #include <<iostream>>
        <>
        int main( <> int argc, <> char *argv[])
        {
            <>

            return 0 ; 
        }
      ]],
        {
          i(1),
          i(2),
          rep(2),
          d(3, get_visual),
        }
      ),
      {condition = line_begin}
    ),
    s({trig="{", snippetType="autosnippet"},
      fmta(
        [[ 
        {
            <>
        }
      ]],
        {
          d(1, get_visual),
        }
      ),
      {condition = line_begin}
    ),
    s({trig="if", snippetType="autosnippet"},
      fmta(
        [[ 
        if ( <> )
        {
            <>
        }   
      ]],
        {
            i(1), 
          d(2, get_visual),
        }
      ),
      {condition = line_begin}
    ),
        s({trig="elif", snippetType="autosnippet"},
      fmta(
        [[ 
        else if ( <> )
        {
            <>
        }   
      ]],
        {
            i(1), 
          d(2, get_visual),
        }
      ),
      {condition = line_begin}
    ),
    s({trig="else", snippetType="autosnippet"},
      fmta(
        [[ 
        else 
        {
            <>
        }   
      ]],
        {
          d(1, get_visual),
        }
      ),
      {condition = line_begin}
    ),
    s({trig="#inc", snippetType="autosnippet"},
      fmta(
        [[ 
        #include <<<>>>
        <>
      ]],
        {
          i(1), 
          i(2)
        }
      ),
      {condition = line_begin}
    ),

}
